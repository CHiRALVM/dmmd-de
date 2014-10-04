
//※メールの着信がなくなったよーという数秒の間//<continuation number="260">
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


scene dm0480.nss_MAIN
{
//※コイルメールボックス表示１
	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("chara0030","Mizuki","How are you?",false,true);
	CoilMailAdd("chara0040","Granny","Dinner",false,true);
	CoilMailAdd("chara0050","Koujaku","About then",false,true);
	CoilMailAdd("hime0010","Captive Princess","Please save me",true,true);
	CoilMailAdd("spm0040","***","New Allmate models soon for sale! Pre-orders will begin tomorrow!",true,true);
	CoilMailAdd("dm0340a","Koujaku","(No Subject)",false,true);

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

	CoilMailSub("chara0000");
	CoilMailSub("chara0010");
	CoilMailSub("chara0020");
	CoilMailSub("chara0030");
	CoilMailSub("chara0040");
	CoilMailSub("chara0050");



	CoilMailSub("hime0090");
	CoilMailSub("hime0030");
	CoilMailSub("hime0040");
	CoilMailSub("hime0050");
	CoilMailSub("hime0060");
	CoilMailSub("hime0070");
	CoilMailSub("hime0080");
	CoilMailSub("hime0090");

	CoilMailSub("hime0110");
	CoilMailSub("hime0120");
	CoilMailSub("hime0130");
	CoilMailSub("hime0140");
	CoilMailSub("hime0150");
	CoilMailSub("hime0190");
	CoilMailSub("hime0210");
	CoilMailSub("hime0220");

	CoilMailAdd("hime0240","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0250","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);

	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);

	#0480ムービー１=true;
	#0480ムービー２=true;
	#0480ムービー３=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0490.nss";

}


scene dm0480.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg101011_1_旧住民区通り表");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -214, -520, "cg/bg/m/bg101011_1_旧住民区通り表_m.jpg");
	Move("絵背景100", 1000, -381, -520, Dxl1, false);
	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Koujaku leaves to go see his other team members&, and I 
head over to Mizuki's shop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイル_メール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(1500);
	SetVolumeEX("SE*", 0, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Hm? A message&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：コイル_メール演出
	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■②メールNEW設置『CoilNewSet(X位置,Y位置)』
	CoilNewSet(400,100);

	//▼①コイル演出表示
	CoilStartFade();
	//▼②メールNEW表示
	CoilNewFade();

	//待ち
	CoilWait();

	//■③メールリスト設置『CoilMListSet(X位置,Y位置)』
	CoilMListSet(500,100);

	//▼③メールリスト表示１（通常表示）
//	CoilMListFade();
	//▼③メールリスト表示２（メールNEWからの遷移）
//覇：コイルの演出は後回し
	CoilMListFade_New();

	CoilMailAdd2("hime0090","Captive Princess","Please save me",true);

	//待ち
	CoilWait();

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//コイルメールボックス表示１
//件名「たすけてください」
//差出人：とらわれの姫
//本文非表示

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000010a01">
"&.&.&.Spam?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
The subject says "Please save me&."
The sender is "Captive Princess&."

&.&.&.Captive Princess?

I could've sworn I got a spam message earlier with the samename&.

Huh&, it's the exact same thing again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※コイル_メール消去
	CoilMailSub2("hime0090",500);

//	Wait(500);

	CoilAllDelete(300,200,370);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000020a01">
"And&, delete&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
//※演出：コイル_メール着信
//※ＳＥ：コイル_メール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");
	MusicStart("SE01",0,700,0,1000,null,true);
	Wait(1500);
	SetVolumeEX("SE*", 0, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Hm? Another message&.

//コイルメールボックス表示２
//件名「たすけてください」
//差出人：とらわれの姫
//本文非表示

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：コイル_メール演出
	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■②メールNEW設置『CoilNewSet(X位置,Y位置)』
	CoilNewSet(400,100);

	//▼①コイル演出表示
	CoilStartFade();
	//▼②メールNEW表示
	CoilNewFade();

	//待ち
	CoilWait();

//覇：コイルの演出は後回し

	//■③メールリスト設置『CoilMListSet(X位置,Y位置)』
	CoilMListSet(500,100);

	//▼③メールリスト表示１（通常表示）
//	CoilMListFade();
	//▼③メールリスト表示２（メールNEWからの遷移）
//覇：コイルの演出は後回し
	CoilMListFade_New();

	CoilMailAdd2("hime0030","Captive Princess","Please save me",true);

	//待ち
	CoilWait();

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000030a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The same thing came again&.
I quickly delete it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//○③メールリスト内部移動『CoilMListMove("移動先のメールナット名",秒数)』
	CoilMListMove("hime0030",500);
	CoilWait();

//※コイル_次々にメールが着信する
	CoilMailAdd2("hime0040","Captive Princess","Please save me",true);
	CoilWait();
	CoilMailAdd2("hime0050","Captive Princess","Please save me",true);
	CoilWait();

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000040a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//※コイル_次々にメールが着信する
	CoilMailAdd2("hime0060","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0070","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0080","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0090","Captive Princess","Please save me",true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000050a01">
"Eh? Wait&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CoilWait();

//※コイル_メール着信

//※コイル_メール着信

//※コイル_メール着信

//※コイル_メール着信

//※コイルメールボックス表示３
	CoilMailAdd2("hime0110","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0120","Captive Princess","Please save me",true);
	CoilWait();

	SoundPlay("@dm005",0,450,true);

	CoilMailAdd2("hime0130","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0140","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0150","Captive Princess","Please save me",true);
//	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
This looks bad&.&.&.

They just keep coming&.
What the hell?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景", 15000, 0, InBottom, "cg/bg/m/bg101011_1_旧住民区通り表_m.jpg");
	Move("絵背景", 0, @0, @50, null, true);

	CoilMailAdd2("hime0190","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0210","Captive Princess","Please save me",true);

	CreateSE("SE01","se物体_物_漁る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE11","se物体_コイル_受信蒼葉");
	MusicStart("SE11",500,700,0,1000,null,true);
	Move("絵背景", 500, @0, @-50, Dxl1, false);
	Fade("絵背景", 500, 1000, null, true);

//	Wait(500);

	CoilWait();

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Confused&, I open my bag and start Ren up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm04/8000060a06">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000070a01">
"Ren&, these messages look like bad news&. What virus is it?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm04/8000080a06">
"Wait a moment&. I'm investigating it now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
Saying that&, Ren goes silent&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE11", 300, 1, null);
	Fade("絵背景", 500, 0, null, false);
	CoilMailAdd2("hime0220","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0240","Captive Princess","Please save me",true);

	SetVolumeEX("SE11", 500, 700, null);
	Fade("絵背景", 500, 1000, null, true);

	CoilWait();

//※コイル_メール着信

//※コイル_メール着信


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I wait impatiently as the messages keep coming in the 
whole time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000090a01">
"Ren&, are you done yet?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm04/8000100a06">
"Analysis completed&. There is no virus&. And if it is
 indeed actually virus&, it's had counter-measures
 installed&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000110a01">
"So you're saying it's impossible for you to stop these
 messages from coming in?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm04/8000120a06">
"The sender's address is unidentified&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000130a01">
"The hell&, are you serious!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm04/8000140a06">
"It would be better to check the contents&."

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000150a01">
"Is it gonna be all right&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//※ＳＥ：コイル_メール着信

//※ＳＥ：コイル_メール着信

	SetVolumeEX("SE11", 300, 0, null);
	Fade("絵背景", 500, 0, null, false);
	CoilMailAdd2("hime0250","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0270","Captive Princess","Please save me",true);
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
But I have a feeling these messages will never leave me 
alone&. Even my ringtone is starting to tick me off&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CoilMailAdd2("hime0280","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailAdd2("hime0290","Captive Princess","Please save me",true);
	CoilWait();


	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000160a01">
"I got it&, jeez! If you want me to&, I'll look already!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CoilMailAdd2("dm0480a","Captive Princess","Please save me",true);
	CoilWait();

	CoilMailSet("dm0480a",114,200);
	CoilMailFade_MList("dm0480a",500);

	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
In an act of desperation&, I tap the subject&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//メールがなくなったよーという数秒の間
	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
&.&.&.Huh?

They stopped sending&.

What did I do?

I feel uneasy&, but read the text inside&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//本文：＜なし＞⇒ナット名：dm0480a
//	CoilMove("CoilMList",300,@200,@-80,Dxl1,false);
	CoilMove("CoilMail",300,@200,@-80,Dxl1,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
There's nothing written&.
So was it really just spam after all&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイル_ゲーム着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
My Coil rings again&.
But this time it isn't a message&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm04/8000170a06">
"It's a game being transmitted&."

{FwPro("fw蒼葉_通常_shock2",2000,"fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000180a01">
"A game being transmitted&.&.&. Oh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※演出：コイル_コイルにはタイムバーと数字が表示されている→ダウンロード中
//※演出：レトロゲーム_モニターにタイトル画面が浮かび上がった

//覇：コイル演出は後回し
	CoilDownSet(200,50);
	CoilDownFade_Mail();
	CoilDownStart(5000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
Now that I think about&, there was that beta going on for 
that game before&. This must be the next phase&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CoilDownComp();
	CoilWait();
	Wait(500);

	//■⑥画像設置『CoilPictSet(X位置,Y位置,"画像パス")』
	CoilPictSet(303,16,"cg/ef/efコイル画像表示領域黒.png");
	//▼⑥画像表示２（メールダウンロードからの表示）
	CoilPictFade_Down();
	//○コイル待ち
	CoilWait();

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("0480ムービー１","dx/mvdot048.ngs");
	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("２","dx/mvdot048loop.ngs");

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("0480ムービー１");
	//○⑥画像描画待機ムービー用
	CoilPictWaitSkip("0480ムービー１");

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("２");
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
When it finishes downloading&, the Title Screen shows up on the monitor&.

It's the same title as last time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text096]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000190a01">
"&.&.&.Hm?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※レトロゲーム

	SetVolumeEX("@dm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text098]
I'm ready to play&, but there's no start button&.
How do you start this?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：レトロゲーム
	SoundPlay("@dm8bit001",0,450,true);

//	CoilPictCon("３","dx/mvdot048a.ngs");
//	CoilPictFadeChan("３");
//	Wait(500);
//	CoilPictCon("４","dx/mvdot048aloop.ngs");
//	CoilPictFadeChan("４");

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("0480ムービー２","dx/mvdot048a.ngs");
	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("４","dx/mvdot048aloop.ngs");

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("0480ムービー２");
	//○⑥画像描画待機ムービー用
	CoilPictWaitSkip("0480ムービー２");

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("４");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text099]
A few moments later&, the screen changes and the game 
suddenly starts up&.

Even when I try to work the controls on my Coil&, nothing 
moves&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵背景", 500, 1000, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000200a01">
"Ren&, it's not working&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm04/8000210a06">
"Isn't it a demo?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000220a01">
"A demo? What's the point of sending that out?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
I keep trying to press the control keys&, and the 
protagonist starts to move&.

Did I get it to work?

Right as I think I did&, I don't touch the controls but 
the character continues to move on its own&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：レトロゲーム
//覇：以下ムービー？

//以下、ファミコンデモ説明
//主人公が村の入り口に立ち、中へ入っていこうとする。
//が、入り口の門は閉ざされているので中に入れない。
//そのあと、村の上方からお婆さんが現れる。
//お婆さんが入り口の門の前まで来ると、２匹の黒い大きなコウモリが飛んできて
//お婆さんを挟み込み、浮き上がって飛んでいってしまう。
//お婆さんを連れたコウモリが飛んでいった先はガラクタの山だった。
//デモ終わり

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("0480ムービー３","dx/mvdot048b.ngs");
	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("静止画","cg/ef/efコイルmvdot048b.png");

	Fade("絵背景", 500, 0, null, false);

//	CoilPictCon("６","dx/mvdot048b.ngs");

//	CoilPictFadeChan("６");
//	CoilPictWait();
//	CoilPictCon("静止画","cg/ef/efコイルmvdot048b.png");
//	CoilPictFadeChan("静止画");

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("0480ムービー３");
	//○⑥画像描画待機ムービー用
	CoilPictWaitSkip("0480ムービー３");

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("静止画");

//	Wait(500);

	Fade("絵背景", 500, 1000, null, true);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000230a01">
"&.&.&.What is this?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
The game looks like it's only half done&.
So it really was just a demo&.

What's the point in sending this?
Did they make a mistake?

I don't get what it's about either&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000240a01">
"It looks exactly like one of those 'deep' games&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm04/8000250a06">
"I see&."

{	Fw("fw蒼葉_通常_cranky3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/8000260a01">
"All those messages earlier were like spam too&. A total
 waste of time&. Let's just go home&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵背景", 500, null, true);

	SetVolumeEX("@dm8bit001", 0, 0, null);
	CoilAllDelete(300,-50,370);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
I exit out of the game and Ren and I start to walk&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0490.nss"]

	SetVolumeEX("@dm*", 3000, 0, null);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);

}
