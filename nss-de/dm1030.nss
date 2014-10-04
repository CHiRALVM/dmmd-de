//<continuation number="270">
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


scene dm1030.nss_MAIN
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
	CoilMailAdd("dm1030a","Haga-san","Secret path to Platinum Jail",true,true);

	#MF_1030ムービー=true;
	#MF_1030ロゴ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1050.nss";

}


scene dm1030.nss
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

	OnBG(10,"bg101051_5_旧住民区通り裏路地06");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 250, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
How far did we run&.&.&.?

We finally come to a stop and check our surroundings&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
I don't hear anyone chasing after us&.
Did we shake them off&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000010a01">
"Hah&, haa&, haa&.&.&."

{	Fw("fw紅雀_通常_pain");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/3000011a02">
"Hah&, hah&, ha&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Both I and Koujaku lean on a wall&, and do nothing but try 
to breathe air back into our exhausted lungs&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイルの着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
	MusicStart("SE01",0,700,0,1000,null,false);

//ＢＧＭ
	SoundPlay("@dm006",0,450,true);


{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000020a01">
"&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
While I was catching my breath&, my Coil started to ring&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm10/3000030a06">
"It's a game application&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000040a01">
"Again!? And why right now&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイルの着信
	CreateSE("SE01","se物体_コイル_着信紅雀");//あきゅん「ＳＥ：se物体_コイル_着信紅雀」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Koujaku takes out his Coil as well&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


{	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/3000050a02">
"&.&.&.Hm? I got sent something too&."

{	Fw("fwAMベニ_通常_normal");}
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm10/3000060b16">
"Isn't it the same as Aoba's? It's a game application too&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000070a01">
"Are you serious&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm10/3000080a06">
"It seems that it automatically installed&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000090a01">
"Eh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//※勝手にゲームが始まる

//※ゲームの内容：
//　勇者が洞窟に入り、宝箱のところまで行く。
//　宝箱を開けるとその中にはカギが入っていて、そのカギを持って洞窟の奥へ進み、
//　大きなドアの前で立ち止まる。カギでドアを開けるとその先にはひとつの光があり…。
//　そのあと、画面がホワイトアウト。

//　画面が切り替わり、プラチナ・ジェイルへの招待状が映し出される。（これは蒼葉のみ届いてる）
//　招待の内容詳細（滞在期間、宿の場所など）が書かれている。
//　そのあと、ゲストＩＤが自動的にインストールされる。

//★『徒歩コイル確認』これでいいのだろうか？
//▼バンクとして「function_coil」に登録
	CoilBank01a("@dm006");

	Fw("fw紅雀_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/3000100a02">
"What the heck? This game makes no sense&. I can't make it
 work at all&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000110a01">
"Is this your first time getting it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：ここまでコイル画面継続、ここで閉じる」

//▼バンクとして「function_coil」に登録
	CoilBank01b();


	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/3000120a02">
"Yeah&. I've never seen this before&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000130a01">
"Didn't I tell you earlier? I got some demo-game movie sent to me&."

{	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/3000140a02">
"So this is what you were talking about?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000150a01">
"But did you get the invitation to Platinum Jail too?"

{	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/3000160a02">
"Hm? Invitation? I didn't get anything like that&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000170a01">
"Here&, this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「コイル：招待状画面あるならここで再表示させ、そのまま進行」
//嶋：あること前提で進行

	DeleteAllSt(200,true);


//▼バンクとして「function_coil」に登録
	CoilBank02a();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
I show Koujaku the invitation&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"st紅雀_通常_cool2");
//	FadeSt("C",200,true);

	Fw("fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/3000180a02">
"Well&, it does look like one&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000190a01">
"So it only got sent to me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
This game is too much for me to understand&, as usual&.&.&.

&.&.&.No&, but this&.
I've been pulled into something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//▼バンクとして「function_coil」に登録
	CoilBank02b();


//あきゅん「演出：ここでコイル画面閉じる」
	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000200a01">
"I think this game might've predicted Granny's kidnapping&."

{	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/3000210a02">
"No way&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000220a01">
"The exact things that happened in the game happened in
 reality right after&."

{	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/3000230a02">
"&.&.&.So you think it's trying to tell you something again
 this time?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000240a01">
"A cave&, a treasure chest&, a key&, and a large door&.&.&."

{	St("C",740, @0,@0,"st紅雀_通常_cool2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/3000250a02">
"You know&, that invitation might not be fake&. It might even be a real one to Platinum Jail&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：コイルにメール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
&.&.&.A message gets sent to me this time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
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
[text0075]
There's an image attached to the message&.
It's a map of the Old Resident District&.

It shows the outer walls of Platinum Jail&, and a red arrow marking to the left part of it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//▼バンクとして「function_coil」に登録
	CoilBank03b();

	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/3000260a01">
"We're going to meet up with Haga-san&. Let's go&."

{	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/3000270a02">
"Gotcha&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
We turn in the direction that will take us to our meeting 
spot with Haga-san&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm1050.nss"]

}
