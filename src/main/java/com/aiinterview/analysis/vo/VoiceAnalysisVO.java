package com.aiinterview.analysis.vo;

import java.util.List;

public class VoiceAnalysisVO {

	private String voiceAnalysisSq;		// 음성 분석 번호
	private String voiceDecibel;		// 음성 데시벨
	private String voiceRange;			// 음성 헤르츠
	private String ansSq;				// 답변번호
	
	private List<VoiceAnalysisVO> voiceAnalysisVOLIst; // VoiceAnlaysisVO를 담은 List

	
	public List<VoiceAnalysisVO> getVoiceAnalysisVOLIst() {
		return voiceAnalysisVOLIst;
	}

	public void setVoiceAnalysisVOLIst(List<VoiceAnalysisVO> voiceAnalysisVOLIst) {
		this.voiceAnalysisVOLIst = voiceAnalysisVOLIst;
	}

	public String getVoiceAnalysisSq() {
		return voiceAnalysisSq;
	}

	public void setVoiceAnalysisSq(String voiceAnalysisSq) {
		this.voiceAnalysisSq = voiceAnalysisSq;
	}

	public String getVoiceDecibel() {
		return voiceDecibel;
	}

	public void setVoiceDecibel(String voiceDecibel) {
		this.voiceDecibel = voiceDecibel;
	}

	public String getVoiceRange() {
		return voiceRange;
	}

	public void setVoiceRange(String voiceRange) {
		this.voiceRange = voiceRange;
	}

	public String getAnsSq() {
		return ansSq;
	}

	public void setAnsSq(String ansSq) {
		this.ansSq = ansSq;
	}

	@Override
	public String toString() {
		return "VoiceAnalysisVO [voiceAnalysisSq=" + voiceAnalysisSq + ", voiceDecibel=" + voiceDecibel
				+ ", voiceRange=" + voiceRange + ", ansSq=" + ansSq + ", voiceAnalysisVOLIst=" + voiceAnalysisVOLIst
				+ "]";
	}
	
	
	

}
