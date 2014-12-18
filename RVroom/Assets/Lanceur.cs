using UnityEngine;
using System.Collections;

public class Lanceur : MonoBehaviour {

	static Vector3 position = new Vector3();
	
	int count = 0;
	bool activeBall = true;

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
	}
	
	// Update is called once per frame
	void Update () {
		if (activeBall && ++count > 100) {
			Object.Instantiate (rigidbody);
			activeBall = false;
		}

		if (!activeBall && ++count > 500) {
			Object.Destroy (gameObject);
		}
	}
}
