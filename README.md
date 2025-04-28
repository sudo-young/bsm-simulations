# Littlest Higgs Model with T-parity under 13 TeV LHC Data

## 📌 프로젝트 개요
본 프로젝트는 Littlest Higgs Model with T-parity (LHT)를 기반으로,  
13 TeV LHC 데이터에 대한 리캐스팅(recasting) 분석을 수행한 작업입니다.  
목표는 다양한 파이널 스테이트에 대해 LHT 시그널을 재구성하고,  
실험 데이터를 활용하여 모델 파라미터 공간을 제약하는 것입니다.

---

## 🧩 사용한 시뮬레이션 툴 및 환경
- **MadGraph5_aMC@NLO**: 이벤트 생성 (LHT 모델 적용)
- **Pythia8**: 입자 showering 및 hadronization
- **Delphes**: CMS detector 시뮬레이션
- **MadAnalysis5**: 커트 기반 분석 및 리캐스팅
- **Python (Jupyter Notebook)**: 데이터 정리 및 시각화
- **LHC 공개 데이터**: CMS/ATLAS 분석 결과 참조

---

## 🔧 시뮬레이션 설정

- 모델 파라미터 설정:
  - 글로벌 대칭 깨짐 스케일: **f = 1, 2 TeV**
  - 페르미온 커플링 상수: **κ = 0.3 ~ 1.0**
  - 힉스 질량: **mh = 125 GeV**
- 주요 생산 프로세스:
  - pp → A_H A_H
  - pp → W_H^+ W_H^−
  - pp → Z_H H
  - pp → heavy quark pairs (T_+, T_-)
- 주요 붕괴 경로 및 파이널 스테이트:
  - Monojet + MET
  - Dilepton + MET
  - Multijet + MET
  - τ⁺τ⁻ + MET

---

## 🔍 분석 흐름

1. MadGraph5에서 이벤트 생성 (LHT 모델 적용)
2. Pythia8로 샤워링 및 입자화
3. Delphes를 통한 간이 검출기 효과 반영
4. MadAnalysis5로 cut-flow 적용 및 신호 추출
5. LHC 데이터 기반 리캐스팅:
   - CMS/ATLAS analysis (13 TeV) 재구성
   - 신호 대 백그라운드 비율(S/B) 계산
6. 파라미터 공간에서 exclusion limits 도출

---

## 📊 주요 결과

- 다양한 파이널 스테이트에 대해 신호 이벤트 재구성 완료
- 실험 데이터와 비교하여 다음과 같은 파라미터 공간 제약:
  - **f < 1.5 TeV** 구간 대부분 배제됨
  - **κ** 값에 따른 민감도 차이 분석
- Recasting 결과, LHT 모델은 일부 높은 f-값 영역에서 생존 가능

(※ 구체적인 수치/플롯은 `/results` 폴더 참조)

---

## 📝 참고 자료
- 논문: [The fate of the Littlest Higgs Model with T-parity under 13 TeV LHC Data (arXiv:1801.06499)](https://arxiv.org/abs/1801.06499)
- MadGraph5_aMC@NLO Documentation
- Delphes CMS Detector Card
- CMS/ATLAS 공개 분석 자료

---

## 💬 기타
> 본 프로젝트는 과거 연구 작업을 기반으로 작성되었으며,  
> 개인 포트폴리오 목적의 요약 및 정리를 위해 재구성되었습니다.
