using UnityEngine;
using System.Collections;

public class InitialVelocity : MonoBehaviour {

	// Use this for initialization
	void Start () {
		rigidbody.velocity = new Vector3 (0, 0, -10);
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.UpArrow)) {
			rigidbody.velocity = new Vector3(0,0,-10);
		} else if (Input.GetKeyDown(KeyCode.LeftArrow)) {
			rigidbody.velocity = new Vector3(10,0,0);
		} else if (Input.GetKeyDown(KeyCode.RightArrow)) {
			rigidbody.velocity = new Vector3(-10,0,0);
		} else if (Input.GetKeyDown(KeyCode.DownArrow)) {
			rigidbody.velocity = new Vector3(0,0,10);
		}
	}
}
