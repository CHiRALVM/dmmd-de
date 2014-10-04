//<continuation number="130">
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


scene dm1340.nss_MAIN
{

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);
	CoilMailAdd("dm1030a","Haga-san","Secret path to Platinum Jail",true,true);
	CoilMailAdd("dm1080a","Koujaku","(No Subject)",false,true);

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

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("dm1340a","Captive Princess","(No Subject)",true,true);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1350.nss";

}


scene dm1340.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm009",0,450,true);

	PrintGO("上背景", 30000);

	OnBG(10,"bg304023_5_東江タワー通用口");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, -509, -444, "cg/bg/l/bg304023_5_東江タワー通用口_l.jpg");

	DrawDelete("上背景", 250, 100, Dxl1, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Inside the tower are many doors with confirmation monitors by them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/4000010a01">
"My ID must be no good here&."

{	Fw("fw紅雀_通常_angry4");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/4000020a02">
"Probably&. Should we just trash it&, then?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※コイルのメール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");
	MusicStart("SE01",0,700,0,1000,null,true);
	Wait(1500);
	SetVolumeEX("SE*", 0, 0, null);
	DeleteSt("C", 200,true);
	Fw("fwAM蓮_通常_normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm13/4000030a06">
"Aoba&, another message&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Ren shows his head out of my bag&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	FwPro("fw蒼葉_通常_worry4",1550,"fw蒼葉_通常_shock2");
//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/4000040a01">
"What&, now&.&.&.? Wait&, huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「コイル：起動してメール展開とか」

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■②メールNEW設置『CoilNewSet(X位置,Y位置)』
	//CoilNewSet(400,100);
	//■③メールリスト設置『CoilMListSet(X位置,Y位置)』
	CoilMListSet(344,90);

	//▼①コイル演出表示
	CoilStartFade();
	//▼②メールNEW表示
	//CoilNewFade();
	//▼③メールリスト表示１（通常表示）
	CoilMListFade();
	//▼③メールリスト表示２（メールNEWからの遷移）
	//CoilMListFade_New();

	//待ち
	CoilWait();//WaitKey(16);

	//CreateSE("SE01","se物体_コイル_操作音02");
	//MusicStart("SE01",0,700,0,1000,null,false);

	//○③新規メール追加
	CoilMailAdd2("dm1340a","Captive Princess","　",false);

	//待ち
	CoilWait();
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I tried to ignore the message&, but my Coil kept forcibly 
pinging notifications&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/4000050a01">
"What is this&, Ren?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm13/4000060a06">
"An unknown behavior&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/4000070a01">
"What is this&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//■④メール設置『CoilMailSet("メールナット名",X位置,Y位置)』
	CoilMailSet("dm1340a",314,120);

	//●『汎用』コイル移動１『CoilMove("指定のコイル名",時間,移動X,移動Y,テンポ,待ち)』//※移動は絶対でも相対でもＯＫ
	CoilMove("CoilMList",300,@200,@-80,Dxl1,true);

	//▼④メール表示１（通常表示）
	//CoilMailFade();
	//▼④メール表示２（メールリストからの遷移）『CoilMailFade_MList("メールナット名",秒数)』
	//CreateSE("SE01","se物体_コイル_操作音01");
	//MusicStart("SE01",0,700,0,1000,null,false);
	CoilMailFade_MList("dm1340a",500);

	//待ち
	CoilWait();
	Wait(1500);


/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//コイルメールボックス表示
//No subject
//Sender: Captive Princess
//本文：⇒ナット名：dm1340a
//The   key   to   the   heart
//is blah blah comments i forgot the phrase i put in the coil function

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

*/


	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/4000080a01">
"The lock to the heart?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se物体_コイル_操作音03");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
	CoilAllDelete(300,300,370);

	Wait(500);
//※ドアが横にスライドする
	CreateSE("SE01","se物体_ドア東江自動_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);

	Fw("fw紅雀_通常_normal2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/4000090a02">
"Oh?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
Suddenly the sound of the lock being released goes off&, and
the door opens&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/4000100a02">
"It just randomly opened&. Is it broken?"

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/4000110a01">
"This message said something about the lock to a heart
 being opened&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/4000120a02">
"I have no clue what that has to do with this&, but let's
 just go in&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Koujaku turns around to his team members&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwm紅雀チームA_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm13/4000130e47">
"Please take the elevator to the top floor! We'll also go
 there!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
The members&, now riding the policemen like horses&, wave 
their hands to us&.

Koujaku nods his head back to them&, and he and I go 
through the door&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//※次ファイル["dm1350.nss"]

}
