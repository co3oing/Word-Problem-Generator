//
//  ContentView.swift
//  Word Problem Generator
//
//  Created by Boreum on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    @State var currentWord: String = ""
    @State var selectedWordList: [String] = []
    @State var wordList = [
        "의심하다",
        "뒤, 뒤쪽",
        "월말",
        "고가",
        "소형",
        "거절하다",
        "산업",
        "선수",
        "퇴원",
        "조간",
        "광장",
        "부부",
        "복습",
        "좁다",
        "더럽히다",
        "부재중",
        "횡단",
        "모퉁이",
        "비교하다",
        "계산",
        "혈압",
        "건",
        "현재",
        "정보",
        "싸다, 포장하다",
        "복수(여러개)",
        "둥글다",
        "어렵다",
        "석양",
        "유명하다",
        "용기",
        "과거",
        "슬프다",
        "그립다",
        "호흡",
        "자연",
        "증감",
        "주차",
        "통지",
        "동작",
        "노력",
        "도망치다, 달아나다",
        "나머지",
        "나다, 자라다",
        "초",
        "우송",
        "맡기다",
        "바위",
        "교류",
        "종류",
        "조사",
        "보통, 대개",
        "인상",
        "늦다",
        "각 역",
        "이기다",
        "허리",
        "고상하다",
        "선",
        "돕다, 살리다",
        "중식, 점심 식사",
        "방위, 방향",
        "미래",
        "우편",
        "예약",
        "젋다",
        "놀다",
        "개찰(구)",
        "바꾸다",
        "기계",
        "휴일",
        "소금",
        "제복",
        "상담, 상의",
        "졸업",
        "확실히",
        "자신이 있다",
        "부분",
        "명령",
        "위치",
        "밑줄",
        "더럽다",
        "금연",
        "넘어지다",
        "수술",
        "주요하다",
        "상품",
        "조퇴",
        "직접",
        "차가워지다, 식다",
        "돌라디, 회전시키다",
        "잇다, 매다, 묶다",
        "타다",
        "부러지다, 꺾이다",
        "관객",
        "공통",
        "더하다, 보태다",
        "훈련",
        "개인",
        "세금",
        "도착",
        "독립",
        "재다, 달다",
        "내다, 지불하다",
        "방향",
        "콩",
        "신청",
        "나타내다",
        "아름답다",
        "목",
        "경영학",
        "혈액형",
        "지급",
        "상상",
        "조식",
        "전하다",
        "짐, 화물",
        "분류",
        "평균",
        "변화",
        "말리다",
        "호수",
        "더러워지다",
        "상대",
        "두껍다",
        "일반적이다",
        "응용",
        "기억하다, 외우다",
        "바꾸다, 교환하다",
        "검사",
        "광고",
        "집중",
        "상업",
        "식기",
        "대회",
        "옆, 가로",
        "갈라지다, 깨지다",
        "얕다",
        "각지",
        "괴롭다, 난처하다",
        "사정",
        "실력",
        "출장",
        "자리",
        "저금",
        "(식물)뿌리",
        "문장",
        "웃다",
        "(눈짓, 몸짓, 소리) 신호",
        "땀",
        "이후",
        "웃는 얼굴",
        "단단하다, 굳다",
        "완성",
        "분배하다, 배포하다",
        "외과",
        "곤란하다",
        "섬",
        "가리키다, 보이다, 나타내다",
        "타인",
        "평일",
        "짧다",
        "응모",
        "늦다",
        "접다, 꺾다",
        "돌리다, 돌려주다",
        "가격",
        "의문",
        "협력",
        "수도",
        "단어",
        "지구",
        "발표",
        "표면",
        "깊다",
        "숨",
        "옮기다",
        "공석",
        "짜다",
        "고생",
        "실업",
        "순번",
        "통근",
        "발견"
    ]
    
    var body: some View {
        if count == 51 {
            VStack {
                Text("~끝~")
                Spacer()
                List {
                    ForEach(selectedWordList.indices, id: \.self) { count in
                        Text("\(count + 1) : \(selectedWordList[count])")
                    }
                }
            }
        } else {
            VStack {
                Text("\(count)번째 문제")
                Spacer()
                Text("\(currentWord)").font(.title)
                
                Spacer()
                
                Button(action: {
                    selecteWord()
                }, label: {
                    Text("다음 문제")
                })
            }
            .onAppear {
                selecteWord()
            }
        }
    }
    
    func selecteWord() {
        guard count < 50 else {
            count += 1
            return
        }
        if let randomIndex = wordList.indices.randomElement() {
            currentWord = wordList.remove(at: randomIndex)
            selectedWordList.append(currentWord)
        }
        count += 1
    }
}

#Preview {
    ContentView()
}
