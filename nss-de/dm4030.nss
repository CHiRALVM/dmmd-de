//<continuation number="240">
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


scene dm4030.nss_MAIN
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
	$GameName = "dm4050.nss";

}


scene dm4030.nss
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

	DrawDelete("絵色黒", 250, 100, null, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
How far did we run&.&.&.?

{	SetVolumeEX("@dm*", 3000, 0, null);}
As our feet come to a stop&, we check our surroundings&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000010a01">
"&.&.&.Ha&, hah&, hah&.&.&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/3000020a04">
"Ha&, whew&, It should- be fine- the police aren't chasing us anymore&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Clear stands next to me&, slouching over and out of breath&.
I lean on the wall to catch my breath as well&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000030a01">
"How do- you know- they're not after us?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/3000040a04">
"If they were&, I would have heard their footsteps&. Because
 I have not heard any&, I can assume they aren't chasing
 after us anymore&."

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000050a01">
"Just that&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I couldn't hear a thing&. 
Does Clear have really good hearing too?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//※コイルの着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw蒼葉_通常_normal2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000060a01">
"&.&.&.?"

{
	SoundPlay("@dm006",0,450,true);

	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm40/3000070a06">
"A game application is being transmitted&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000080a01">
"Again!? And right now&.&.&.!?"

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/3000090a04">
"A game?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm40/3000100a06">
"It appears to be an automatic recovery type&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000110a01">
"Eh&.&.&.!?"


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
//勇者が洞窟に入り、宝箱のところまで行く。
//宝箱を開けるとその中にはカギが入っていて、そのカギを持って洞窟の奥へ進み、
//大きなドアの前で立ち止まる。カギでドアを開けるとその先にはひとつの光があり…。
//そのあと、画面がホワイトアウト。

//cono「演出：↓こちらのWaitはコイル演出入れた後に消してください」
//	Wait(5000);

//	SetVolumeEX("@dm8bit001", 1000, 0, null);
//	SetVolumeEX("@dm006", 1000, 450, null);

//画面が切り替わり、プラチナ・ジェイルへの招待状が映し出される。（これは蒼葉のみ届いてる）
//招待の内容詳細（滞在期間、宿の場所など）が書かれている。
//そのあと、ゲストＩＤが自動的にインストールされる。


//★『徒歩コイル確認』これでいいのだろうか？
//▼バンクとして「function_coil」に登録
	CoilBank01a("@dm006");


	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000120a01">
"An invitation? So this is for entering Platinum Jail?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm40/3000130a06">
"It seems so&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000140a01">
"I still don't get what the whole game thing is for&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
&.&.&.No&. Wait a second&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000150a01">
"They sent me part of the game when Granny collapsed too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/3000160a04">
"Is that so?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000170a01">
"Yeah&. When we all went to the Northern District&, her
 character was taken to a landfill by a crow&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/3000180a04">
"Yes&. You did say that&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000190a01">
"After I saw it in the game&, she was actually kidnapped&.
 That means that this time it might also be telling me
 something's going to happen&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/3000200a04">
"The possibility of that is not zero&. But it seems almost
 too suspicious&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000210a01">
"Well&, that's true too&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：ここまでコイル画面継続、ここで閉じる」

//▼バンクとして「function_coil」に登録
	CoilBank01b();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I don't have any idea who the sender is&, and to put it one way&, they're even predicting crimes before they take place&.
But&.&.&.


A cave&, a treasure chest&, a key&, and a large door&.
What are they supposed to mean?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：コイルにメール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw蒼葉_通常_normal2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000220a01">
"Another message?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
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
There's an image attached to it&. It's a map of the Old 
Residential area&. A red arrow marks a spot to the left 
side of Platinum Jail&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//▼バンクとして「function_coil」に登録
	CoilBank03b_1();

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/3000230a01">
"We're going to go join up with Haga-san&. Let's go&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/3000240a04">
"All right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//▼バンクとして「function_coil」に登録
	CoilBank03b_2();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
We turn to the direction of our meeting spot&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm4050.nss"]

}
