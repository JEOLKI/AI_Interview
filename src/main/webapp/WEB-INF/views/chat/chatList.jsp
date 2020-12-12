<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script type="text/javascript" id="www-widgetapi-script"
	src="https://www.youtube.com/s/player/03226028/www-widgetapi.vflset/www-widgetapi.js"
	async=""></script>
<script async="" type="text/javascript"
	src="https://cdn.channel.io/plugin/ch-plugin-core-20201210150157.js"
	charset="UTF-8"></script>
<meta charset="utf-8">
<style type="text/css" private="true">
* {
	box-sizing: border-box;
}

*:focus {
	outline: none;
}

#main {
	height: 100%;
	opacity: 1;
}

html {
	height: 100%;
}

body {
	height: calc(100% - 140px);
	position: relative;
	margin: 0;
	font-family: "NotoSansKR", "NotoSansJP", "-apple-system",
		"BlinkMacSystemFont", "Helvetica Neue", "맑은 고딕", "Yu Gothic",
		"Segoe UI", "Roboto", "system-ui", "sans-serif";
	background-color: #F6F6F7;
}

input, textarea {
	font-family: "NotoSansKR", "NotoSansJP", "-apple-system",
		"BlinkMacSystemFont", "Helvetica Neue", "맑은 고딕", "Yu Gothic",
		"Segoe UI", "Roboto", "system-ui", "sans-serif";
}
</style>
<style>
.rdrCalendarWrapper {
	box-sizing: border-box;
	background: #ffffff;
	display: -webkit-inline-box;
	display: inline-flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	flex-direction: column;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.rdrDateDisplay {
	display: -webkit-box;
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
}

.rdrDateDisplayItem {
	-webkit-box-flex: 1;
	flex: 1 1;
	width: 0;
	text-align: center;
	color: inherit;
}

.rdrDateDisplayItem+.rdrDateDisplayItem {
	margin-left: 0.833em;
}

.rdrDateDisplayItem input {
	text-align: inherit
}

.rdrDateDisplayItem input:disabled {
	cursor: default;
}

.rdrDateDisplayItemActive {
	
}

.rdrMonthAndYearWrapper {
	box-sizing: inherit;
	display: -webkit-box;
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
}

.rdrMonthAndYearPickers {
	-webkit-box-flex: 1;
	flex: 1 1 auto;
	display: -webkit-box;
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
}

.rdrMonthPicker {
	
}

.rdrYearPicker {
	
}

.rdrNextPrevButton {
	box-sizing: inherit;
	cursor: pointer;
	outline: none;
}

.rdrPprevButton {
	
}

.rdrNextButton {
	
}

.rdrMonths {
	display: -webkit-box;
	display: flex;
}

.rdrMonthsVertical {
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	flex-direction: column;
}

.rdrMonthsHorizontal>div>div>div {
	display: -webkit-box;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	flex-direction: row;
}

.rdrMonth {
	width: 27.667em;
}

.rdrWeekDays {
	display: -webkit-box;
	display: flex;
}

.rdrWeekDay {
	flex-basis: calc(100%/ 7);
	box-sizing: inherit;
	text-align: center;
}

.rdrDays {
	display: -webkit-box;
	display: flex;
	flex-wrap: wrap;
}

.rdrDateDisplayWrapper {
	
}

.rdrMonthName {
	
}

.rdrInfiniteMonths {
	overflow: auto;
}

.rdrDateRangeWrapper {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.rdrDateInput {
	position: relative;
}

.rdrDateInput input {
	outline: none;
}

.rdrDateInput .rdrWarning {
	position: absolute;
	font-size: 1.6em;
	line-height: 1.6em;
	top: 0;
	right: .25em;
	color: #FF0000;
}

.rdrDay {
	box-sizing: inherit;
	width: calc(100%/ 7);
	position: relative;
	font: inherit;
	cursor: pointer;
}

.rdrDayNumber {
	display: block;
	position: relative;
}

.rdrDayNumber span {
	color: #1d2429;
}

.rdrDayDisabled {
	cursor: not-allowed;
}

@
supports (-ms-ime-align: auto ) { .rdrDay { flex-basis:14.285%!important;
	
}

}
.rdrSelected, .rdrInRange, .rdrStartEdge, .rdrEndEdge {
	pointer-events: none;
}

.rdrInRange {
	
}

.rdrDayStartPreview, .rdrDayInPreview, .rdrDayEndPreview {
	pointer-events: none;
}

.rdrDayHovered {
	
}

.rdrDayActive {
	
}

.rdrDateRangePickerWrapper {
	display: -webkit-inline-box;
	display: inline-flex;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.rdrDefinedRangesWrapper {
	
}

.rdrStaticRanges {
	display: -webkit-box;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	flex-direction: column;
}

.rdrStaticRange {
	font-size: inherit;
}

.rdrStaticRangeLabel {
	
}

.rdrInputRanges {
	
}

.rdrInputRange {
	display: -webkit-box;
	display: flex;
}

.rdrInputRangeInput {
	
}
</style>
<style>
.rdrCalendarWrapper {
	color: #000000;
	font-size: 12px;
}

.rdrDateDisplayWrapper {
	background-color: rgb(239, 242, 247);
}

.rdrDateDisplay {
	margin: 0.833em;
}

.rdrDateDisplayItem {
	border-radius: 4px;
	background-color: rgb(255, 255, 255);
	box-shadow: 0 1px 2px 0 rgba(35, 57, 66, 0.21);
	border: 1px solid transparent;
}

.rdrDateDisplayItem input {
	cursor: pointer;
	height: 2.5em;
	line-height: 2.5em;
	border: 0px;
	background: transparent;
	width: 100%;
	color: #849095;
}

.rdrDateDisplayItemActive {
	border-color: currentColor;
}

.rdrDateDisplayItemActive input {
	color: #7d888d
}

.rdrMonthAndYearWrapper {
	-webkit-box-align: center;
	align-items: center;
	height: 60px;
	padding-top: 10px;
}

.rdrMonthAndYearPickers {
	font-weight: 600;
}

.rdrMonthAndYearPickers select {
	-moz-appearance: none;
	appearance: none;
	-webkit-appearance: none;
	border: 0;
	background: transparent;
	padding: 10px 30px 10px 10px;
	border-radius: 4px;
	outline: 0;
	color: #3e484f;
	background:
		url("data:image/svg+xml;utf8,<svg width='9px' height='6px' viewBox='0 0 9 6' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'><g id='Artboard' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' transform='translate(-636.000000, -171.000000)' fill-opacity='0.368716033'><g id='input' transform='translate(172.000000, 37.000000)' fill='%230E242F' fill-rule='nonzero'><g id='Group-9' transform='translate(323.000000, 127.000000)'><path d='M142.280245,7.23952813 C141.987305,6.92353472 141.512432,6.92361662 141.219585,7.23971106 C140.926739,7.5558055 140.926815,8.06821394 141.219755,8.38420735 L145.498801,13 L149.780245,8.38162071 C150.073185,8.0656273 150.073261,7.55321886 149.780415,7.23712442 C149.487568,6.92102998 149.012695,6.92094808 148.719755,7.23694149 L145.498801,10.7113732 L142.280245,7.23952813 Z' id='arrow'></path></g></g></g></svg>")
		no-repeat;
	background-position: right 8px center;
	cursor: pointer;
	text-align: center
}

.rdrMonthAndYearPickers select:hover {
	background-color: rgba(0, 0, 0, 0.07);
}

.rdrMonthPicker, .rdrYearPicker {
	margin: 0 5px
}

.rdrNextPrevButton {
	display: block;
	width: 24px;
	height: 24px;
	margin: 0 0.833em;
	padding: 0;
	border: 0;
	border-radius: 5px;
	background: #EFF2F7
}

.rdrNextPrevButton:hover {
	background: #E1E7F0;
}

.rdrNextPrevButton i {
	display: block;
	width: 0;
	height: 0;
	padding: 0;
	text-align: center;
	border-style: solid;
	margin: auto;
	-webkit-transform: translate(-3px, 0px);
	transform: translate(-3px, 0px);
}

.rdrPprevButton i {
	border-width: 4px 6px 4px 4px;
	border-color: transparent rgb(52, 73, 94) transparent transparent;
	-webkit-transform: translate(-3px, 0px);
	transform: translate(-3px, 0px);
}

.rdrNextButton i {
	margin: 0 0 0 7px;
	border-width: 4px 4px 4px 6px;
	border-color: transparent transparent transparent rgb(52, 73, 94);
	-webkit-transform: translate(3px, 0px);
	transform: translate(3px, 0px);
}

.rdrWeekDays {
	padding: 0 0.833em;
}

.rdrMonth {
	padding: 0 0.833em 1.666em 0.833em;
}

.rdrMonth .rdrWeekDays {
	padding: 0;
}

.rdrMonths.rdrMonthsVertical .rdrMonth:first-child .rdrMonthName {
	display: none;
}

.rdrWeekDay {
	font-weight: 400;
	line-height: 2.667em;
	color: rgb(132, 144, 149);
}

.rdrDay {
	background: transparent;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 0;
	padding: 0;
	line-height: 3.000em;
	height: 3.000em;
	text-align: center;
	color: #1d2429
}

.rdrDay:focus {
	outline: 0;
}

.rdrDayNumber {
	outline: 0;
	font-weight: 300;
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	top: 5px;
	bottom: 5px;
	display: -webkit-box;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
}

.rdrDayToday .rdrDayNumber span {
	font-weight: 500
}

.rdrDayToday .rdrDayNumber span:after {
	content: '';
	position: absolute;
	bottom: 4px;
	left: 50%;
	-webkit-transform: translate(-50%, 0);
	transform: translate(-50%, 0);
	width: 18px;
	height: 2px;
	border-radius: 2px;
	background: #3d91ff;
}

.rdrDayToday:not (.rdrDayPassive ) .rdrInRange ~ .rdrDayNumber span:after,
	.rdrDayToday:not (.rdrDayPassive ) .rdrStartEdge ~ .rdrDayNumber span:after,
	.rdrDayToday:not (.rdrDayPassive ) .rdrEndEdge ~ .rdrDayNumber span:after,
	.rdrDayToday:not (.rdrDayPassive ) .rdrSelected ~ .rdrDayNumber span:after
	{
	background: #fff;
}

.rdrDay:not (.rdrDayPassive ) .rdrInRange ~ .rdrDayNumber span, .rdrDay:not
	(.rdrDayPassive ) .rdrStartEdge ~ .rdrDayNumber span, .rdrDay:not (.rdrDayPassive
	) .rdrEndEdge ~ .rdrDayNumber span, .rdrDay:not (.rdrDayPassive ) .rdrSelected 
	~ .rdrDayNumber span {
	color: rgba(255, 255, 255, 0.85);
}

.rdrSelected, .rdrInRange, .rdrStartEdge, .rdrEndEdge {
	background: currentColor;
	position: absolute;
	top: 5px;
	left: 0;
	right: 0;
	bottom: 5px;
}

.rdrSelected {
	left: 2px;
	right: 2px;
}

.rdrInRange {
	
}

.rdrStartEdge {
	border-top-left-radius: 1.042em;
	border-bottom-left-radius: 1.042em;
	left: 2px;
}

.rdrEndEdge {
	border-top-right-radius: 1.042em;
	border-bottom-right-radius: 1.042em;
	right: 2px;
}

.rdrSelected {
	border-radius: 1.042em;
}

.rdrDayStartOfMonth .rdrInRange, .rdrDayStartOfMonth .rdrEndEdge,
	.rdrDayStartOfWeek .rdrInRange, .rdrDayStartOfWeek .rdrEndEdge {
	border-top-left-radius: 1.042em;
	border-bottom-left-radius: 1.042em;
	left: 2px;
}

.rdrDayEndOfMonth .rdrInRange, .rdrDayEndOfMonth .rdrStartEdge,
	.rdrDayEndOfWeek .rdrInRange, .rdrDayEndOfWeek .rdrStartEdge {
	border-top-right-radius: 1.042em;
	border-bottom-right-radius: 1.042em;
	right: 2px;
}

.rdrDayStartOfMonth .rdrDayInPreview, .rdrDayStartOfMonth .rdrDayEndPreview,
	.rdrDayStartOfWeek .rdrDayInPreview, .rdrDayStartOfWeek .rdrDayEndPreview
	{
	border-top-left-radius: 1.333em;
	border-bottom-left-radius: 1.333em;
	border-left-width: 1px;
	left: 0px;
}

.rdrDayEndOfMonth .rdrDayInPreview, .rdrDayEndOfMonth .rdrDayStartPreview,
	.rdrDayEndOfWeek .rdrDayInPreview, .rdrDayEndOfWeek .rdrDayStartPreview
	{
	border-top-right-radius: 1.333em;
	border-bottom-right-radius: 1.333em;
	border-right-width: 1px;
	right: 0px;
}

.rdrDayStartPreview, .rdrDayInPreview, .rdrDayEndPreview {
	background: rgba(255, 255, 255, 0.09);
	position: absolute;
	top: 3px;
	left: 0px;
	right: 0px;
	bottom: 3px;
	pointer-events: none;
	border: 0px solid currentColor;
	z-index: 1;
}

.rdrDayStartPreview {
	border-top-width: 1px;
	border-left-width: 1px;
	border-bottom-width: 1px;
	border-top-left-radius: 1.333em;
	border-bottom-left-radius: 1.333em;
	left: 0px;
}

.rdrDayInPreview {
	border-top-width: 1px;
	border-bottom-width: 1px;
}

.rdrDayEndPreview {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-top-right-radius: 1.333em;
	border-bottom-right-radius: 1.333em;
	right: 2px;
	right: 0px;
}

.rdrDefinedRangesWrapper {
	font-size: 12px;
	width: 226px;
	border-right: solid 1px #eff2f7;
	background: #fff;
}

.rdrDefinedRangesWrapper .rdrStaticRangeSelected {
	color: currentColor;
	font-weight: 600;
}

.rdrStaticRange {
	border: 0;
	cursor: pointer;
	display: block;
	outline: 0;
	border-bottom: 1px solid #eff2f7;
	padding: 0;
	background: #fff
}

.rdrStaticRange:hover .rdrStaticRangeLabel, .rdrStaticRange:focus .rdrStaticRangeLabel
	{
	background: #eff2f7;
}

.rdrStaticRangeLabel {
	display: block;
	outline: 0;
	line-height: 18px;
	padding: 10px 20px;
	text-align: left;
}

.rdrInputRanges {
	padding: 10px 0;
}

.rdrInputRange {
	-webkit-box-align: center;
	align-items: center;
	padding: 5px 20px;
}

.rdrInputRangeInput {
	width: 30px;
	height: 30px;
	line-height: 30px;
	border-radius: 4px;
	text-align: center;
	border: solid 1px rgb(222, 231, 235);
	margin-right: 10px;
	color: rgb(108, 118, 122)
}

.rdrInputRangeInput:focus, .rdrInputRangeInput:hover {
	border-color: rgb(180, 191, 196);
	outline: 0;
	color: #333;
}

.rdrCalendarWrapper:not (.rdrDateRangeWrapper ) .rdrDayHovered .rdrDayNumber:after
	{
	content: '';
	border: 1px solid currentColor;
	border-radius: 1.333em;
	position: absolute;
	top: -2px;
	bottom: -2px;
	left: 0px;
	right: 0px;
	background: transparent;
}

.rdrDayPassive {
	pointer-events: none;
}

.rdrDayPassive .rdrDayNumber span {
	color: #d5dce0;
}

.rdrDayPassive .rdrInRange, .rdrDayPassive .rdrStartEdge, .rdrDayPassive .rdrEndEdge,
	.rdrDayPassive .rdrSelected, .rdrDayPassive .rdrDayStartPreview,
	.rdrDayPassive .rdrDayInPreview, .rdrDayPassive .rdrDayEndPreview {
	display: none;
}

.rdrDayDisabled {
	background-color: rgb(248, 248, 248);
}

.rdrDayDisabled .rdrDayNumber span {
	color: #aeb9bf;
}

.rdrDayDisabled .rdrInRange, .rdrDayDisabled .rdrStartEdge,
	.rdrDayDisabled .rdrEndEdge, .rdrDayDisabled .rdrSelected,
	.rdrDayDisabled .rdrDayStartPreview, .rdrDayDisabled .rdrDayInPreview,
	.rdrDayDisabled .rdrDayEndPreview {
	-webkit-filter: grayscale(100%) opacity(60%);
	filter: grayscale(100%) opacity(60%);
}

.rdrMonthName {
	text-align: left;
	font-weight: 600;
	color: #849095;
	padding: 0.833em;
}
</style>
<script async="" crossorigin="anonymous"
	integrity="sha384-H4chu/XQ3ztniOYTpWo+kwec6yx3KQutpNkHiKyeY05XCZwCSap7KSwahg16pzJo"
	src="https://browser.sentry-cdn.com/5.6.2/bundle.min.js"></script>
<style data-styled="active" data-styled-version="5.1.1"></style>
</head>
<body style="background-color: rgb(246, 246, 247);">
	<div id="main">
		<div data-ch-testid="lounge"
			class="Loungestyled__Lounge-u5mrod-1 jZTsfp">
			<div
				class="FullHeaderstyled__Wrapper-sc-1aljhke-0 kUOSeK Loungestyled__Header-u5mrod-3 iwYaXG">
				<div class="FullHeaderstyled__BackGround-sc-1aljhke-1 fhjUph"></div>
				<div class="FullHeaderstyled__Container-sc-1aljhke-2 bvPbsQ"
					style="opacity: 1;">
					<div class="FullHeaderstyled__Actions-sc-1aljhke-3 drOGgf">
						<div data-ch-testid="settings-icon" name="settings2" size="18"
							width="30" height="30"
							class="Iconstyled__Icon-sc-7igckt-0 jnvKvI"></div>
					</div>
					<div class="FullHeaderstyled__Title-sc-1aljhke-4 kmKrhz">iamterview</div>
					<div class="FullHeaderstyled__Body-sc-1aljhke-7 fZIprm">
						<div class="FullHeaderstyled__Content-sc-1aljhke-6 hNeMZS">
							<div class="FullHeaderstyled__ResponseDelay-sc-1aljhke-8 cIBCGp">
								응답시간 빠름
								<div name="instant" size="22"
									class="Iconstyled__Icon-sc-7igckt-0 FullHeaderstyled__ResponseIcon-sc-1aljhke-5 KHtft"></div>
							</div>
							<div class="FullHeaderstyled__Description-sc-1aljhke-9 eHyyog">보통
								몇 분 내에 응답합니다.</div>
						</div>
						<div class="FullHeaderstyled__Gutter-sc-1aljhke-12 hkNqfd">
							<div size="34"
								class="Avatarstyled__Avatar-yfy5xq-0 FullHeaderstyled__Avatar-sc-1aljhke-13 dRQeEM"></div>
							<div size="34"
								class="Avatarstyled__Avatar-yfy5xq-0 FullHeaderstyled__Avatar-sc-1aljhke-13 kZFMVp"></div>
							<div size="34"
								class="Avatarstyled__Avatar-yfy5xq-0 FullHeaderstyled__Avatar-sc-1aljhke-13 jivsf"></div>
							<div size="34"
								class="Avatarstyled__Avatar-yfy5xq-0 FullHeaderstyled__Avatar-sc-1aljhke-13 ghAOno"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="Loungestyled__Content-u5mrod-4 fiwphP">
				<div
					class="Cardstyled__Card-sc-1ji31k9-0 Loungestyled__Card-u5mrod-2 ebSFPd">
					<div class="Headerstyled__Header-sc-1wyd9jd-0 bofHaN">
						<h1 class="Headerstyled__Title-sc-1wyd9jd-1 iQudpT">진행중인 상담</h1>
						<div class="Loungestyled__HeaderNewChatButton-u5mrod-5 dZRmoU">
							<div name="new-chat-black" size="12"
								class="Iconstyled__Icon-sc-7igckt-0 Loungestyled__HeaderNewChatIcon-u5mrod-6 bNmoP"></div>
							새 대화 시작
						</div>
					</div>
					<div data-ch-testid="user-chat-item"
						class="UserChatItemstyled__Wrapper-sc-1m3tdpx-9 dRmqLO">
						<div class="UserChatItemstyled__Gutter-sc-1m3tdpx-0 dwjdEl">
							<div size="34" class="Avatarstyled__Avatar-yfy5xq-0 kkCxWH"></div>
						</div>
						<div class="UserChatItemstyled__Content-sc-1m3tdpx-1 dSrTQM">
							<div class="UserChatItemstyled__Head-sc-1m3tdpx-2 jEjoEK">iamterview</div>
							<div data-ch-testid="user-chat-item-body"
								class="UserChatItemstyled__Body-sc-1m3tdpx-3 befTZN">[아이엠터뷰X인싸담당자]
								아이엠터뷰가 YouTube "인싸담당자"와 콜라보했어요! https://youtu.be/s9e306B-_xU</div>
						</div>
						<div class="UserChatItemstyled__Meta-sc-1m3tdpx-5 dFSXbQ">
							<div class="UserChatItemstyled__TimeStamp-sc-1m3tdpx-6 ueiPQ">12/10</div>
							<div
								class="Iconstyled__Icon-sc-7igckt-0 faCbVs UserChatItemstyled__UserChatActions-sc-1m3tdpx-7 dGNrAB"
								name="more" width="24" height="24" size="24"></div>
							<div data-ch-testid="user-chat-item-badge" hidden=""
								class="Badgestyled__Badge-sc-1ztqq4-0 UserChatItemstyled__Badge-sc-1m3tdpx-8 iGOLlu">0</div>
						</div>
					</div>
				</div>
				<div class="Integrationsstyled__Wrapper-sc-1yknefn-0 dGzApz">
					<a
						href="https://kauth.kakao.com/oauth/authorize?client_id=4e2c3b003da72eb73123e5772434125f&amp;redirect_uri=https://api.channel.io/front/app/kakao/authorize&amp;response_type=code&amp;state=eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJzZXMiLCJrZXkiOiIyMzY1MC01ZmQxNmZhY2U4ZGZhMDUxMWQ2ZCIsImlhdCI6MTYwNzc1OTY1MiwiZXhwIjoxNjEwMzUxNjUyfQ.-S-y9oYeyw4H34aD3R6FgedjH4zsN6b7Ocg-8K3-NJ0"
						target="_blank"
						class="Integrationsstyled__AvatarLink-sc-1yknefn-1 eFZEoU"><div
							class="Avatarstyled__Avatar-yfy5xq-0 Integrationsstyled__Avatar-sc-1yknefn-2 gvsXjp"></div></a><a
						target="_blank"
						class="Integrationsstyled__AvatarLink-sc-1yknefn-1 eFZEoU"><div
							name="integration-link"
							class="Avatarstyled__Avatar-yfy5xq-0 Integrationsstyled__Avatar-sc-1yknefn-2 kRMeBg"></div></a><a
						href="tel:+821030992394" target="_blank"
						class="Integrationsstyled__AvatarLink-sc-1yknefn-1 eFZEoU"><div
							name="integration-phone"
							class="Avatarstyled__Avatar-yfy5xq-0 Integrationsstyled__Avatar-sc-1yknefn-2 iciXNI"></div></a>
				</div>
			</div>
			<div class="Loungestyled__PoweredByWrapper-u5mrod-9 cPMoVw">
				<div class="PoweredBystyled__Wrapper-sc-1emxyx4-2 kOckyO">
					<div name="ch-new-symbol-powered" width="18" height="18"
						class="Iconstyled__Icon-sc-7igckt-0 PoweredBystyled__Icon-sc-1emxyx4-0 bVshAh"></div>
					<div class="PoweredBystyled__Text-sc-1emxyx4-1 bslwfY">
						<span><b>채널톡</b> 이용중</span>
					</div>
				</div>
			</div>
			<div data-ch-testid="close-icon" name="close2" size="18" width="30"
				height="30"
				class="Iconstyled__Icon-sc-7igckt-0 Loungestyled__CloseIcon-u5mrod-0 goNNeA"></div>
		</div>
		<div class="ToastContainerstyled__ToastContainer-sc-1ra7iyy-0 jhKPdB"></div>
		<div></div>
	</div>
	<script src="https://www.youtube.com/player_api" defer=""></script>
</body>
</html>