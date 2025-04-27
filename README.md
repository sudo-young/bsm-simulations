# Littlest Higgs Model with T-parity (LHT) Analysis at 13 TeV  
*(Based on [arXiv:1801.06499](https://arxiv.org/abs/1801.06499))*

---

## 📚 프로젝트 개요
이 프로젝트는 **Littlest Higgs Model with T-parity (LHT)**를 기반으로,  
**13 TeV LHC 데이터** 하에서 BSM (Beyond Standard Model) 시나리오를 분석하는 작업입니다.

주요 목표는:
- LHT 모델에 등장하는 새로운 입자들의 충돌 반응을 시뮬레이션하고
- 힉스 보손의 시그널을 재구성하여
- LHC 데이터와 비교 가능한 분석 결과를 얻는 것입니다.

---

## 🛠️ 사용한 도구
- **MadGraph5_aMC@NLO**: 이벤트 생성 (pp → heavy particles → h, τ 등)
- **Pythia8**: 파편화 (showering) 및 하드로니제이션 (hadronization)
- **Delphes**: CMS 검출기 시뮬레이션
- **MadAnalysis5**: 분석 및 힉스 mass peak 재구성

---

## ⚙️ 주요 설정
- **Symmetry breaking scale**: `f = 2 TeV`
- **Yukawa coupling**: `k = 0.3`
- **힉스 질량**: `mh = 125 GeV`
- **BSM 입자 질량 및 decay 정보**: `param_card.dat` 파일에 정의 (논문 Appendix 참고)

---

## 🎯 분석 프로세스
1. **BSM 시나리오 세팅**
   - 새로운 입자와 군 구조 적용
   - LHT 기반 라그랑지안 모델 생성
2. **이벤트 생성**
   - MadGraph를 통해 pp → h → τ⁺τ⁻ 반응 시뮬레이션
3. **파편화 및 하드로니제이션**
   - Pythia8을 사용하여 showering 및 입자화
4. **검출기 시뮬레이션**
   - Delphes CMS 설정파일을 사용하여 검출기 응답 모사
5. **데이터 분석**
   - MadAnalysis5로 힉스 mass peak 분석
   - 시그널 대비 배경 분석 (S/B ratio 측정)

---

## 📈 주요 결과
- 힉스 보손 mass peak 재구성 성공
- LHT 모형에 대한 LHC 데이터 하의 제약 조건 설정
- 신호/배경 분석을 통한 통계적 유의성 평가

(※ 구체적 수치는 [arXiv:1801.06499](https://arxiv.org/abs/1801.06499) 논문 결과 참조)

---

## 📂 폴더 구조
```bash
├── README.md
├── analysis/           # 분석 스크립트 (선택)
├── results/            # 결과 플롯 및 분석 데이터
├── param_card.dat      # 모델 파라미터 파일
├── delphes_card_CMS.tcl # Delphes 설정 파일
└── plots/              # Mass peak 등 시각화 이미지
