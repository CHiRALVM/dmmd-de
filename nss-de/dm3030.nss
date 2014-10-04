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


scene dm3030.nss_MAIN
{

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("hime0240","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0250","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);

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
	CoilMailAdd("dm1030a","羽賀さん","プラチナ・ジェイルへの抜け道",true,true);

	#MF_1030ムービー=true;
	#MF_1030ロゴ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3050.nss";

}


scene dm3030.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm009",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg101041_1_旧住民区通り裏路地05");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 250, 100, null, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
How far did we run&.&.&.?

We exit the alleyway and come to a stop&. We check our
surroundings&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
I don't hear any footsteps coming after us&.
Did we shake them off?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000010a01">
"Hah&, hah&, hah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//	SoundPlay("@dm006",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I lean on a wall and catch my breath&, knowing we're safe 
for now&.

Mink lightly pants&, and keeps a watchful eye around us&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイルの着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000020a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
While my breathing calms down&, my Coil rings&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

{	Fw("fwAM蓮_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm30/3000030a06">
"It's a game application&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000040a01">
"Again!? And does it really have to be right now&.&.&.!?"

{
//※コイルの着信
	CreateSE("SE01","se物体_コイル_受信ミンク");//あきゅん「ＳＥ：se物体_コイル_受信ミンク」
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/3000050a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
It looks like something was also sent to Mink's Coil&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	DeleteAllSt(200,true);

{	Fw("fwAMトリ_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm30/3000060b12">
"A game application&, huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000070a01">
"Seriously? The same thing?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm30/3000080a06">
"It seems that it's an automatic installation type&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000090a01">
"Huh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

//	SetVolumeEX("@dm006", 1000, 1, null);
//	SoundPlay("@dm8bit001",0,450,true);

//あきゅん「コイル：プラチナジェイル招待状」

//※勝手にゲームが始まる

//※ゲームの内容：
//　勇者が洞窟に入り、宝箱のところまで行く。
//　宝箱を開けるとその中にはカギが入っていて、そのカギを持って洞窟の奥へ進み、
//　大きなドアの前で立ち止まる。カギでドアを開けるとその先にはひとつの光があり…。
//　そのあと、画面がホワイトアウト。

//cono「演出：↓こちらのWaitはコイル演出入れた後に消してください」
//	Wait(5000);

//	SetVolumeEX("@dm8bit001", 1000, 0, null);
//	SetVolumeEX("@dm006", 1000, 450, null);

//　画面が切り替わり、プラチナ・ジェイルへの招待状が映し出される。（これは蒼葉のみ届いてる）
//　招待の内容詳細（滞在期間、宿の場所など）が書かれている。
//　そのあと、ゲストＩＤが自動的にインストールされる。

//★『徒歩コイル確認』これでいいのだろうか？
//▼バンクとして「function_coil」に登録
	CoilBank01a("@dm006");


	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000100a01">
"I still don't understand this at all&.&.&. And what's
 this invitation about anyway?"

{	Fw("fwミンク_通常_serious");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/3000110a05">
"Invitation?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000120a01">
"Didn't you get one?"

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/3000130a05">
"Show me&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	//●『汎用』コイル移動２『CoilMove2(移動パターン,"指定のコイル名",時間,移動X,移動Y,テンポ,待ち)』//※移動は絶対のみ
	CoilMove2(2,"CoilPict",500,1024,-500,Axl1,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
I show Mink the invitation on my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0049]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000140a01">
"So I'm the only one that got it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//▼バンクとして「function_coil」に登録
	CoilBank01b();

	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/3000150a05">
"Looks suspicious&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I thought so&.
But this game&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000160a01">
"I think that this game actually predicted Granny's
 kidnapping&."

{	Fw("fw蒼葉_通常_normal");}

{	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/3000161a05">
"Predicted?"


{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000170a01">
"I said earlier that I got a game application sent to me
 before&, so this one might mean something too&.&.&."

{	St("C",740, @0,@0,"stミンク_通常_serious");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/3000180a05">
"Then it's a trap&. It must have been from the culprit on
 the scene that knew she was taken&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000190a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I never thought of that&.&.&.

Even if it is a trap&, there must be some significance to
it this time too&.&.&.

A cave&, a treasure chest&, a key&, a large door&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：コイルにメール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw蒼葉_通常_worry3");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000200a01">
"&.&.&.This time it's a message&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);


/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//コイルメールボックス表示
//件名：プラチナ・ジェイルへの抜け道
//差出人：羽賀さん
//本文：⇒ナット名：dm1030a
//本当は私が案内するつもりだったんですが、予定変更です。北地区のD-86まで来てください。そこで合流しましょう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/
//あきゅん「コイル：画面展開、マルチで複数画面開いていく」
//あきゅん「コイル：ポイントマーカーはアニメ出来たら嬉しいが……」

//▼バンクとして「function_coil」に登録
	CoilBank03a();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
A picture is attached to the message&.
It's a map of the Old Resident District&.

There's a point marked on the left side of the outer walls close to Platinum Jail&. 


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//▼バンクとして「function_coil」に登録
	CoilBank03b();

	St("C",740, @0,@0,"stミンク_通常_serious");
	FadeSt("C",200,true);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000210a01">
"Let's go meet up with Haga-san for now&."

{	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/3000220a05">
"The man who knows the way into Platinum Jail?"

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/3000230a01">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
We turn in the direction that will take us to our meeting 
spot with Haga-san according to the map&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm3050.nss"]

}
