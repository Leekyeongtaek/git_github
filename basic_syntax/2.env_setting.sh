# github 인증 방법 2가지
# 1.oauth 인증방식(제3자 인증-웹 로그인)
# 2.pat token 인증방식 : github에서 직접 보안키 발급
# 발급한 키를 키체인(자격증명)에 등록

# git 프로젝트 생성 방법 2가지
# 방법1. github에서 진행중인 원격 repo를 clone
# 방법2. 로컬에서 이미 진행중인 프로젝트를 github에 업로드

# 해당 프로젝트 위치에 .git 폴더(repo 주소, 사용자 정보 등)가 생성됨
git init

# 원격지 주소를 생성 및 추가
git remote add origin 레포주소

# 원격지 주소 삭제
git remote remove origin

# 원격지 주소 변경
git remote set-url origin 레포주소

# git 설정 정보 조회
git config --list

# 타인의 레포 clone 받는 방법 2가지
# 1. 커밋 이력 그대로 가져오기
git clone 타인 레포 주소
# 해당 폴더로 이동 후 github 레포 주소 변경
git remote set-url origin 나의 레포 주소
git push origin main

# 2. 커밋 이력 없이 레포 가져오기
git clone 타인 레포 주소
# 해당 폴더 안으로 이동 후 .git 폴더 삭제
git init
git remote add origin 나의 레포 주소
git add .
git commit -m "message"
git push origin master or main

# 사용자 지정 방법
# 전역적 사용자(이름, email) 지정
git config --global user.name "유저네암"
git config --global user.email "유저 이메일"

# 지역적 사용자 지정
git config --local user.name "유저네암"
git config --local user.email "유저 이메일"

# 사용자 정보 조회
git config user.name
git config user.email

# 특정 파일을 git 추적 목록에서 제외시키고 싶다면 .gitignore 파일에 파일목록 등록
# 이미 add, commit 되어 버린 파일을 추적 목록에서 제외하고 싶다면
git rm -r --cached .
