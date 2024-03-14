package edu.sejong.game.vo;

import java.util.HashSet;
import java.util.Set;

public class LottoVO {
	private Set<Integer> numbers = new HashSet<Integer>();

	public LottoVO() {
		while(numbers.size() < 6) {
			numbers.add((int) (Math.random()*45) +1);
		}
		System.out.println(numbers);
	}

	public Set<Integer> getNumbers() {
		return numbers;
	}

	public void setNumbers(Set<Integer> numbers) {
		this.numbers = numbers;
	}
	/**
	 * @param num
	 * @return
	 */
	public String getColor(int num) {
        if (num <= 10) 
            return "red";
        else if (num <= 20) 
            return "orange";
        else if (num <= 30)
            return "yellow";
        else if(num <= 40) 
            return "green";
        else
        	return "blue";
    }	
}
