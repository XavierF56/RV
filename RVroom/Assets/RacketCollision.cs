using UnityEngine;
using System.Collections;

public class RacketCollision : MonoBehaviour {

	Vector3[] velocityBuffer;
	Vector3 previousPosition;
	int index;
	const int maxSize = 100;

	// Use this for initialization
	void Start () {		
		velocityBuffer = new Vector3[maxSize];
		previousPosition = this.rigidbody.position;
		index = 0;
	}
	
	// Update is called once per frame
	void Update () {
		float delta = Time.deltaTime;
		if(delta != 0)
		{
			Vector3 velocity = (this.rigidbody.position - previousPosition) / delta;
			velocityBuffer[index] = velocity;
			index = (index + 1) % maxSize;

			previousPosition = this.rigidbody.position;
		}
	}

	void OnCollisionEnter(Collision collision) {
		foreach (ContactPoint contact in collision.contacts) {
			Debug.DrawRay(contact.point, contact.normal, Color.blue);
		}

		int delta = (int)(Time.deltaTime/300);
		if (delta > maxSize) {
			delta = maxSize;
		}
		Vector3 racketVelocity = new Vector3 ();
		for (int i=0; i<delta; i++) {
			racketVelocity += velocityBuffer[(i+index)%maxSize];
		}
		racketVelocity = racketVelocity / delta;
		Vector3 ballVelocity = collision.gameObject.rigidbody.velocity;

		collision.gameObject.rigidbody.velocity = 0.8f * ballVelocity + racketVelocity;
			//ComputeBallVelocity(ballVelocity, racketVelocity);

	}

	Vector3 ComputeBallVelocity(Vector3 ballVelocity, Vector3 racketVelocity) {		

		Vector3 amorti = new Vector3(ballVelocity.x, ballVelocity.y, ballVelocity.z);


		return amorti + racketVelocity;
	}

}
