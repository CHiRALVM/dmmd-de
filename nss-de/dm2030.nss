//<continuation number="420">
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


scene dm2030.nss_MAIN
{

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("hime0240","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0250","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);

$TEXTBOX_TYPE="";
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
	$GameName = "dm2040_vs.nss";

}


scene dm2030.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");

//嶋：前ファイルライムにつき入り部分修正必要

	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 500, Axl3, true);
	Wait(1000);
	FadeDelete("絵色白", 2000, DxlAuto, true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000010a01">
"&.&.&.Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
We come back to the real world&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000020a03">
"Pretty disappointing&, it was just a small fry&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000030a01">
"&.&.&.Then you should've helped out&. If you did&, then Ren
 wouldn't have&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I direct my anger towards the obnoxiously calm Noiz and 
take Ren out of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000040a01">
"Ren&, are you all right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//嶋：しつこいようだったら削除
//	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev004犬蓮起動a.jpg");
//	Fade("絵背景", 500, 1000, null, true);
//	DeleteAllSt(0,true);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/3000050a06">
"Yes&, I didn't recieve any substantial damage&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000060a01">
"Really&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//	FadeDelete("絵背景", 300,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Relieved&, I pat Ren's head and place him back into my bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000070a03">
"Are you some kind of idiot? You don't need to carry that
 thing around with you all the time&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000080a01">
"&.&.&.What?"

{	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000090a03">
"Maybe you really are&. Instead of worrying about your
 machine&, worry about yourself&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000100a03">
"That guy just now cut the damage limit&. If you were the
 one that took that damage&, you would've been sorry&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000110a01">
"&.&.&.&.&."

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000120a03">
"But what you said earlier doesn't seem to be a lie&. Even
 if you're in trouble&, you don't remember what to do&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000130a01">
"&.&.&.Did you not help me because you wanted to make sure
 of that?"

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000140a03">
"That's right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000150a01">
"&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I'm absolutely pissed and want to burst out on him&.

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
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000160a01">
"&.&.&.?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/3000170a06">
"It's a game application transmission&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000180a01">
"Again!? And now of all times&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイルの着信
	CreateSE("SE01","se物体_コイル_受信ノイズ");//あきゅん「ＳＥ：se物体_コイル_受信ノイズ」
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"stノイズ_通常_serious");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000190a03">
"&.&.&.&.&."

{	Fw("fwAMウサギモドキ_通常_normal");}
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm20/3000200c09">
"Game app delivery! Game app delivery!"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000210a01">
"You got it too?"

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000220a03">
"Looks like it&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm20/3000230a06">
"It seems to be the auto-play type&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000240a01">
"Huh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//	SetVolumeEX("@dm006", 1000, 1, null);
//	SoundPlay("@dm8bit001",0,450,true);

//※勝手にゲームが始まる

//※ゲームの内容：
//　勇者が洞窟に入り、宝箱のところまで行く。
//　宝箱を開けるとその中にはカギが入っていて、そのカギを持って洞窟の奥へ進み、
//　大きなドアの前で立ち止まる。カギでドアを開けるとその先にはひとつの光があり…。
//　そのあと、画面がホワイトアウト。

//cono「演出：↓こちらのWaitはコイル演出入れた後に消してください」
//	Wait(5000);

//▼バンクとして「function_coil」に登録
	CoilBank01a("@dm006");

	Wait(3000);

//▼バンクとして「function_coil」に登録
	CoilBank01b();

//	SetVolumeEX("@dm8bit001", 1000, 0, null);
//	SetVolumeEX("@dm006", 1000, 450, null);

//　画面が切り替わり、プラチナ・ジェイルへの招待状が映し出される。（これは蒼葉のみ届いてる）
//　招待の内容詳細（滞在期間、宿の場所など）が書かれている。
//　そのあと、ゲストＩＤが自動的にインストールされる

//嶋：コイル演出後回し

	St("C",740, @0,@0,"stノイズ_通常_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000250a03">
"This game&.&.&. is weird&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000260a01">
"I told you I got a game that was only in a demo movie
 form&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000270a01">
"But does this invitation thing let us into Platinum Jail?"

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000280a03">
"Invitation? I didn't get anything like that&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000290a01">
"Really? Here&, this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//▼バンクとして「function_coil」に登録
	CoilBank02a();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I show the invitation to Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"stノイズ_通常_normal2");
//	FadeSt("C",200,true);

{	Fw("fwノイズ_通常_normal2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000300a03">
"&.&.&.I see&."

{
//	St("C",740, @0,@0,"stノイズ_通常_serious");
//	FadeSt("C",200,true);
	Fw("fwノイズ_通常_serious");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000310a03">
"I thought it was a prank&, but I guess it's not&. It does
 look like the game's been altered&, though&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000320a01">
"Altered?"

{
//	St("C",740, @0,@0,"stノイズ_通常_normal2");
//	FadeSt("C",200,true);
	Fw("fwノイズ_通常_normal2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000330a03">
"I've played that game before&. But it didn't have a scene
 like that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0088]
What does all this mean&.&.&.?

I don't even understand what this game is about yet&.&.&.

&.&.&.No&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//▼バンクとして「function_coil」に登録
	CoilBank02b();

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000340a01">
"&.&.&.This same game was sent to me when Granny was
 kidnapped&."

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000350a03">
"You did say so&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000360a01">
"After that&, what happened in the game actually happened in real life&. If that's the case again&, then maybe what the
 game showed will actually happen&." 

{	St("C",740, @0,@0,"stノイズ_通常_serious");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000370a03">
"If that's true&, then it's obviously a trap&. It means you
 got an announcement about your grandma's kidnapping&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000380a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
He's right&.&.&.

But even if it is a trap&, this game must have some meaning&.

A cave&, a treasure chest&, a key&, a large door&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイルにメール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000390a01">
"&.&.&.Now it's a message?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//コイルメールボックス表示
//件名：A passage to Platinum Jail
//差出人：Haga-san
//本文：⇒ナット名：dm1030a
//I intended to actually guide you, but we have a change of schedule. Please come to D-86 of the north district. I'll meet you there.


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
[text0104]
An image is attached to the message&.
It's a map of the Old Resident District&.

A red arrow points around the left side of Platinum Jail's outer wall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//▼バンクとして「function_coil」に登録
	CoilBank03b();

	St("C",740, @0,@0,"stノイズ_通常_serious");
	FadeSt("C",200,true);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000400a01">
"I'm going to join Haga-san now&."

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/3000410a03">
"I'll go with you&. It'd be a pain if you died before our
 next match&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/3000420a01">
"&.&.&.Let's go&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
I begin to walk with Noiz to where Haga-san is&, albeit 
with mixed feelings&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2040_vs.nss"]

}
