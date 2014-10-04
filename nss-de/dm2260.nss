//<continuation number="230">
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


scene dm2260.nss_MAIN
{

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("hime0250","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);
	CoilMailAdd("dm1030a","Haga-san","Secret Pathway to Platinum Jail",true,true);

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
	CoilMailAdd("dm2260a","Captive Princess","（件名なし）",true,false);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2270.nss";

}


scene dm2260.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",740, @0,@0,"stノイズ_通常_normal3");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000010a03">
"So&, what about this guy?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE02","se人体_動作_衣擦れ25");
	MusicStart("SE02",0,500,0,1000,null,false);
	CreateSE("SE03","se物体_ベッド_寝返り");
	MusicStart("SE03",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Noiz steps on the collapsed Akushima's back and rolls him  face up&.

I can see his face&, his mouth wide open&.

Akushima's current state is the same as Mizuki's&.
I'm guessing he was being manipulated by someone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//頭痛エフェクト
	HAFade(2000, 0,false);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000020a01">
"&.&.&.Nh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
&.&.&.I stopped Akushima by using my power&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I was using my voice&, but it didn't actually feel like it  was mine&.

And those words too&.

"Sink&."

Those words seemed to come out naturally&, but they felt 
rather unfamiliar to me&. 

I really&.&.&. don't want to use that power after all&.
I feel like I'm slowly losing myself&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000030a03">
"Doesn't look like he's gonna wake up&. Want to leave him?"

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000040a01">
"&.&.&.&.&."

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000050a03">
"Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000060a01">
"&.&.&.Sure&, yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm004",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Startled&, I nod to Noiz&.
Noiz looks at me with a dubious expression&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000070a03">
"What is it now?"

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000080a01">
"No&.&.&. It's nothing&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※コイルのメール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
My Coil rings&. It's a message&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「コイル：メール展開」
	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
	MusicStart("SE01",0,700,0,1000,null,false);
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//コイルメールボックス表示
//件名：なし
//差出人：Captive Princess
//内容：⇒ナット名：dm2260a
//Everything at the tower has been opened.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■③メールリスト設置『CoilMListSet(X位置,Y位置)』
	CoilMListSet(344,90);

	//▼①コイル演出表示
	CoilStartFade();
	//▼③メールリスト表示１（通常表示）
	CoilMListFade();

	//待ち
	CoilWait();

	//○③新規メール追加
	CoilMailAdd2("dm2260a","Captive Princess","　",false);

	//待ち
	CoilWait();

	//■④メール設置『CoilMailSet("メールナット名",X位置,Y位置)』
	CoilMailSet("dm2260a",314,120);
	//▼④メール表示２（メールリストからの遷移）『CoilMailFade_MList("メールナット名",秒数)』
	CoilMailFade_MList("dm2260a",500);

	//待ち
	CoilWait();


{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000090a01">
"&.&.&.? Spam again?"

{	Fw("fwノイズ_通常_angry");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000100a03">
"Give it to me for a sec&."

{
	//●『汎用』コイル移動１『CoilMove("指定のコイル名",時間,移動X,移動Y,テンポ,待ち)』//※移動は絶対でも相対でもＯＫ
	CoilMove("CoilMail",300,1024,@0,Dxl1,true);
	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000110a01">
"Eh? Hey!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
Noiz grabs my Coil&, connects it to his own&, and starts 
analyzing the message without permission&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	//待ち
	CoilWait();

	//●『汎用』コイル移動２『CoilMove2(移動パターン,"指定のコイル名",時間,移動X,移動Y,テンポ,待ち)』//※移動は絶対のみ
	CoilMove2(1,"CoilMail",500,500,20,Dxl1,false);

	Fw("fwノイズ_通常_normal3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0047]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000120a03">
"I knew it&, I can't trace it back&. No&, more like it
 wasn't sent from any specific location&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SoundPlay("@dm007a",0,450,true);

	//●『汎用』コイル収納１『CoilAllDelete(秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilAllDelete(300,-50,370);
	//○コイル待ち
	CoilWait();

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000130a01">
"What do you mean?"

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000140a03">
"It was sent in a camouflage using the waste data that
 drifts over the network in huge amounts&."  

{	St("C",740, @0,@0,"stノイズ_通常_normal3");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000141a03">
"It's just that this is Platinum Jail&. It's hard to
 consider someone accessing it from outside&. That being the
 case&, I'm not sure what the sender's intention is&.&.&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000142a01">
"So we should think someone inside Platinum Jail contacted
 us&."

{	St("C",740, @0,@0,"stノイズ_通常_serious");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000143a03">
"Yeah&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000150a01">
"But if this message is a trap&, what does that mean?" 

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000160a03">
"Doesn't it look like it? The doors of the tower are open
 and all&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000170a01">
"In that case&, it really is a trap&. &.&.&.Toue's&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000180a03">
"For sure&. What do you wanna do?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000190a01">
"Well&.&.&. Right now it looks like we're in a situation full
 of traps blocking us in every direction&."

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000200a03">
"Going to the tower?"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000210a01">
"Yeah&.&.&."

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/6000220a03">
"Well&, I don't think it's for nothing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/6000230a01">
"Yeah&. &.&.&.Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I don't know whether this is really the right path or not&.

But&, for us&, who are already in the hands of the enemy&, 
there's no time to think or choose a different path&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_足音_走る01");
	MusicStart("SE02",0,700,0,900,null,false);

	CreateTextureSP("絵背景", 100, Center, -165, "cg/bg/l/bg301011_5_プラチナジェイル大通り2ゲーセン_l.jpg");
	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Move("絵背景", 1000, @0, -15, Dxl1, true);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
In that case&.&.&. we can only move forward&.

We run for the looming tower&, being 
cautious as to not run into the police or yakuza&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	SetVolumeEX("@dm*", 2000, 0, null);
	CreateColorSP("絵黒幕", 5000, "000000");

	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	SetVolumeEX("SE*", 1000, 0, null);

	//ClearFadeAll(1000, true);

//※次ファイル["dm2270.nss"]

}
