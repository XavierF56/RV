using UnityEngine;
using System.Collections;

public class Mouvement : MonoBehaviour {

	static Vector3 position = new Vector3();
	
	int count = 0;
	bool activeBall = true;
	
	// Use this for initialization
	void Start () {
		if (position.Equals(new Vector3()))
			position = rigidbody.position;
		else
			rigidbody.position = position;
		
		float randX = Random.Range (-10, 10);
		float randY = Random.Range (10, 20);
		float randZ = Random.Range (0, 50);
		rigidbody.velocity = new Vector3 (randX, randY, randZ);
	}
	
	// Update is called once per frame
	void Update () {
		if (activeBall && ++count > 10) {
			Object.Instantiate (rigidbody);
			activeBall = false;
		}
	}
}
