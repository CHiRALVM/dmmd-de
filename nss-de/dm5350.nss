//<continuation number="400">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm5350.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5360.nss";

	//▼頭痛レベル設定
	$HALevel=4;
}


scene dm5350.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景102", 100, Center, Middle, "cg/bg/bg304051_5_東江タワー研究エリア廊下01.jpg");
	Rotate("絵背景102", 0, @0, @180, 0, null, true);

	FadeDelete("上背景", 2000, null, true);

	FwPro("fw蒼葉_通常_shock3",1800,"fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000010a01">
"&.&.&.Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
&.&.&.The white robed men are on the ground&.

Their eyes are wide open&, and they're foaming from the 
mouth&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000020a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
They didn't just collapse for no reason&.
&.&.&.They've been broken&.

I broke them&.

I lost consciousness just like before&, but this time&, 
I'd seen the whole thing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Although I was awake&, I had no control over my body&, and&.&.&.

I watched him&.&.&. I watched "myself" break them apart&.

I destroyed their minds&.

And the guests at that party&.&.&.

"I" did it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

$HALevel=4;

	CreateColorEXsub("絵色黒", 5000, "WHITE");
	Fade("絵色黒", 2000, 500, Axl1, false);

	HAFade(2000, 0,true);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000030a01">
"Ngh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_頭痛_痛む01L");
	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
My head hurts&.

&.&.&.It hurts&.

Ithurtsithurtsithurts&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※↓は白蒼葉の顔はまだ見えない
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000040b01">
"It's all your fault&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000050a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 500, 0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Suddenly&, I heard a voice&.
I thought I was hallucinating for a moment&.

There's a voice in my head&.
Someone speaking to me&.&.&. in my voice&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 1000, 500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000060b01">
"It's because you wouldn't accept it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000070b01">
"That's why all of this is happening&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXsub("絵色黒", 5000, "WHITE");
	Fade("絵色黒", 1000, 800, Axl3, false);
	HAFade(6000, 0,false);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000080a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
Feeling faint&, my vision begins to stain black&. I can't 
see a thing&.

The "me" speaking is overpowering me through my eardrums&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵波用", 5000);
	DrawEffect("絵波用", 5000, "Ripple", 0, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000090b01">
"It's your fault&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000100b01">
"Your fault&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000110b01">
"It's all your fault&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵波用", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
&.&.&.Shut up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵波用", 300, 1000, null, true);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000120b01">
"It's your fault&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵波用", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
Shut up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵波用", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000130b01">
"It's your fault&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵波用", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
Shut up&, shut up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵波用", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000140b01">
"It's your fault&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000150a01">
"――――Shut up!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 7000, "WHITE");
	Fade("絵色白", 300, 1000, Axl3, false);
	Fade("絵波用", 300, 0, null, true);

	CreatePlainSP("絵板写", 9000);

	Delete("絵色白");
	Delete("絵波用");

	CreateTextureSPsub("絵演砂嵐", 4010, Center, Middle, "cg/data/noize_01_00_0.png");
	Fade("絵演砂嵐", 0, 1000, null, true);
	Zoom("絵演砂嵐", 0, 1100, 1100, null, true);
	MoveFFP1("@絵演砂嵐",200);

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateTextureSP("絵窓/絵背景", 4000, Center, Middle, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");//L使ってください（千代子
	CreateColorSP("絵窓/絵色黒", 5000, "000000");

	Fade("絵色黒", 0, 300, null, true);

	SetVertex("絵窓/絵背景", -500, 200);

	Request("絵窓/絵背景", Smoothing);

	DrawTransition("絵窓/絵色黒", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	Zoom("絵窓/絵背景", 60000, 1250, 1250, null, false);

	FadeDelete("絵板写", 500, null, true);

//※白蒼葉の幻影が浮かぶ（顔見える？かろうじて見えない？）
//	Fw("fw黒蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000160b01">
"&.&.&.Haha!"

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000170a01">
"You&.&.&. Who are you?"

{	DeleteFw();}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000180b01">
"I'm you&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000190a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000200b01">
"Haven't I helped you countless times? I'm the only reason
 why you've even gotten this far&, and it's still the same
 now&."

{	DeleteFw();}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000210b01">
"So I guess around now would be an okay time for me to
 become you&."

{
	Fw("fw蒼葉_通常_hard2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000220a01">
"&.&.&.Don't fuck with me&. I'm me&."

{	DeleteFw();}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000230b01">
"Hah&. But you don't even know what you really are&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000240b01">
"Can you even explain what's happening to you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000250a01">
"&.&.&.&.&."

{	DeleteFw();}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000260b01">
"You think you don't know who you are&, right? Wrong&. The
 truth is that you do know&. But you won't accept it&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000270b01">
"Failing to accept it&, you stay there&, not knowing a thing&. Unable to do anything&. Ending everything halfway&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000280b01">
"But&.&.&. I know&. I know more than anyone&. Because I'm you&."

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000290a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SEL01","se擬音_精神_超音波01L");
	MusicStart("SEL01",6000,300,0,600,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000300b01">
"So we'll switch&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000310b01">
"I'll switch with you&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000320b01">
"I will live in your place&, knowing everything&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000330b01">
"So switch with me&."

{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000340a01">
"&.&.&.Shut up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SEL01", 2000, 800, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000350b01">
"Switch&."

{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000360a01">
"Shut up&."

{
	SetVolumeEX("SEL01", 2000, 1000, null);
	DeleteFw();}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000370b01">
"Switch with me&."

{
	FwPro("fw蒼葉_通常_hard2",1800,"fw蒼葉_通常_pain2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000380a01">
"Shut up&.&.&. Shut up!!!"

{
	SetVolumeEX("SEL01", 2000, 1200, null);
	DeleteFw();}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/5000390b01">
"Switch&. Switch with me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SEL01", 10000, 1500, null);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/5000400a01">
"Shut up&, be quiet! Disappear! Disappear! &.&.&.Disappear!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);

//※ばちん！と強く弾かれる音
//あきゅん「※：次のファイル冒頭で再生」
/*
	CreateSE("SE01","se擬音_効果_火花02");
	MusicStart("SE01",0,700,0,2000,null,false);
	CreateSE("SE02","se擬音_効果_火花02");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreateSE("SE03","se擬音_効果_火花02");
	MusicStart("SE03",0,700,0,1000,null,false);
*/

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 0, 1000, Dxl2, true);
	Delete("絵窓/絵*");

//※現実世界へ戻る

}
