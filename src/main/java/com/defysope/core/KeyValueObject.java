package com.defysope.core;

import java.io.Serializable;

public interface KeyValueObject extends Serializable {
	String getMapKey();

	String getMapValue();
}
