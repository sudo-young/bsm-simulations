# 🧪 bsm-simulation-pipeline 
고에너지 물리학 이벤트 시뮬레이션 파이프라인

MadGraph, Pythia8, Delphes, MadAnalysis를 활용하여 LHC 환경의 입자 충돌 시뮬레이션과 검출기 응답을 분석합니다.

## 📌 사용 툴

- [FeynRules](https://feynrules.irmp.ucl.ac.be/): 몬테카를로 시뮬레이션 툴에서 BSM 모델 계산을 위한 모델 파일 생성
- [MadGraph5_aMC@NLO](https://launchpad.net/mg5amcnlo): 충돌 반응 생성 및 산란단면 계산
- [Pythia8](http://home.thep.lu.se/~torbjorn/Pythia.html): 하드론화 및 파편화
- [Delphes](https://delphes.gitlab.io/): 빠른 검출기 시뮬레이션
- [MadAnalysis5](https://madanalysis.irmp.ucl.ac.be/): 이벤트 분석 및 가시화
- Python: 이벤트 분석 및 가시화
- mathematica: 이벤트 분석 및 가시화

---

## ⚙️ 시뮬레이션 과정

1. **BSM 모델 파일 생성**
   - 새로운 입자와 군 구조를 적용하고 게이지를 고려해서 라그랑지안을 적용
2. **이벤트 생성**
   - `pp > h > tau+ tau-` 반응 시뮬레이션 (MadGraph)
   - ## 🔧 시뮬레이션 파라미터

      - 사용한 모델 파라미터는 [param_card.dat](cards/param_card.dat) 파일에 포함되어 있으며, 다음과 같은 내용을 포함합니다:

      - **LHT 모델 파라미터** (f = 2 TeV, k = 0.3 등)
      - **힉스 질량** 설정: mh = 125 GeV
      - **BSM 입자 질량 및 decay 정보** 등
      

3. **입자 파편화**
   - Pythia8으로 showering 및 hadronization
4. **검출기 시뮬레이션**
   - Delphes CMS 설정 파일 사용
5. **데이터 분석**
   - MadAnalysis5로 힉스 보손 mass peak 분석, 시그널 대 백그라운드 비교

---

## 📊 결과 예시

![](results/plots/higgs_mass_peak.png)

---

## 📁 실행 방법

```bash
bash scripts/run_pipeline.sh
