package online.shixun.asl.dto;

public class StudentDTO {

	private Long id=0L;
	
	private String name;
	
	private String gener;
	
	private String object;
	
	private String direction;
	
	private int technology;
	
	private int ability;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGener() {
		return gener;
	}

	public void setGener(String gener) {
		this.gener = gener;
	}

	public String getObject() {
		return object;
	}

	public void setObject(String object) {
		this.object = object;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public int getTechnology() {
		return technology;
	}

	public void setTechnology(int technology) {
		this.technology = technology;
	}

	public int getAbility() {
		return ability;
	}

	public void setAbility(int ability) {
		this.ability = ability;
	}
	
	
}
