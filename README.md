# 🧪 bsm-simulation-pipeline 
고에너지 물리학 이벤트 시뮬레이션 파이프라인

MadGraph, Pythia8, Delphes, MadAnalysis를 활용하여 LHC 환경의 입자 충돌 시뮬레이션과 검출기 응답을 분석합니다.

## 📌 사용 툴

- [MadGraph5_aMC@NLO](https://launchpad.net/mg5amcnlo): 충돌 반응 생성 및 산란단면 계산
- [Pythia8](http://home.thep.lu.se/~torbjorn/Pythia.html): 하드론화 및 파편화
- [Delphes](https://delphes.gitlab.io/): 빠른 검출기 시뮬레이션
- [MadAnalysis5](https://madanalysis.irmp.ucl.ac.be/): 이벤트 분석 및 가시화
- Python: 이벤트 분석 및 가시화
- mathematica: 이벤트 분석 및 가시화

---

## ⚙️ 시뮬레이션 과정

1. **이벤트 생성**
   - `pp > h > tau+ tau-` 반응 시뮬레이션 (MadGraph)
2. **입자 파편화**
   - Pythia8으로 showering 및 hadronization
3. **검출기 시뮬레이션**
   - Delphes CMS 설정 파일 사용
4. **데이터 분석**
   - MadAnalysis5로 힉스 보손 mass peak 분석, 시그널 대 백그라운드 비교

---

## 📊 결과 예시

![](results/plots/higgs_mass_peak.png)

---

## 📁 실행 방법

```bash
bash scripts/run_pipeline.sh
