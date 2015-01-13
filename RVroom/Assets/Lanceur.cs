using UnityEngine;
using System.Collections;

public class Lanceur : MonoBehaviour {

	static Vector3 position = new Vector3();

	bool activeBall = true;

	float creationTime;

	// Use this for initialization
	void Start () {
		if (position.Equals(new Vector3()))
			position = rigidbody.position;
		else
			rigidbody.position = position;

		float randX = 0;//Random.Range (-1, 1);
		float randY = 10f;//Random.Range (10, 20);
		float randZ = 20f;//Random.Range (0, 30);
		rigidbody.velocity = new Vector3 (randX, randY, randZ);

		creationTime = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
		if (activeBall && Time.time > creationTime + 2) {
			Object.Instantiate (rigidbody);
			activeBall = false;
		} 

		if (!activeBall && Time.time > creationTime + 10) {
			Object.Destroy (gameObject);
		}
	}
}
