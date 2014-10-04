//<continuation number="210">
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


scene dm5030.nss_MAIN
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
	$GameName = "dm5050.nss";

	//▼頭痛レベル設定
	$HALevel=2;

}


scene dm5030.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");

	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, 0, -524, "cg/bg/l/bg101022_5_旧住民区通り裏路地02_l.jpg");

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
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000010a01">
"&.&.&.Ha&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I return to reality&, free from Rhyme&.

I'm laying on a heap of trash in some alley&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000020a01">
"Shit&.&.&. What the hell&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
During that Rhyme match&.&.&.
Usui wasn't there&.

Was it another Drive-By?

Why do I keep getting pulled into this shit&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頭痛レベル：２
//あきゅん「確認：蒼葉の頭痛入れきれてない？」
	//頭痛エフェクト(0)
$HALevel=2;
	HAFade(2000, 0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
When I try to get up&, a sharp headache hits me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000030a01">
"Ouch!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
The pain stabs at me just as needles would&, but it quickly fades away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵背景100", 500, @0, @50, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Ren is crouched at my feet&.

He did take some hits in Rhyme&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000040a01">
"Hey&, Ren&. Are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
He's shutting down&.&.&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}
As I move to pick him up&, Ren opens his eyes a little bit&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/3000050a06">
"&.&.&.Aoba&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000060a01">
"Are you all right? Didn't you take some damage?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/3000070a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
Ren silently stares at me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAM蓮_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/3000080a06">
"&.&.&.I feel a little off&, but there doesn't seem to be any
 significant problem&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000090a01">
"We should make sure later&, just in case&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイルの着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I put Ren into my bag&, uneasy&, and suddenly my Coil rings&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイルの着信
//	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
//	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000100a01">
"Hm? Someone sent me something?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/3000110a06">
"It's a game application&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000120a01">
"Again!? And does it have to be right now!?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/3000130a06">
"It looks like it's the automatic installation type&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000140a01">
"Eh&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

//	SetVolumeEX("@dm006", 1000, 1, null);
//	SoundPlay("@dm8bit001",0,450,true);

//あきゅん「コイル：招待状」

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

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000150a01">
"An invitation&.&.&. Can we get into Platinum Jail with this?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/3000160a06">
"I think so&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「↑：コイルの画面ここまで」
//▼バンクとして「function_coil」に登録
	CoilBank01b();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
The game still made no sense&.

&.&.&.No&, wait a second&.

That transmission that came when Granny was kidnapped&.&.&. 
It definitely had Granny's character being taken away to 
that dump&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000170a01">
"No way&.&.&. They can't possibly be linked&, can they? Ren&,
 what do you think?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/3000180a06">
"There's not enough evidence to suggest the probability&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000190a01">
"Right&. But&.&.&. if they are linked-"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
A cave&, a treasure chest&, a key&, and a large door&.
Do they have some sort of meaning&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：コイルにメール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
My Coil started to ring again&.

This time it's a message from Haga-san&.

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
Attached to the message is a map of the Old Resident 
District&.

There's a red mark made on the left side of the outer wall of Platinum Jail&. 


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//▼バンクとして「function_coil」に登録
	CoilBank03b_1();

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/3000200a01">
"&.&.&.Okay&, let's go&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/3000210a06">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//▼バンクとして「function_coil」に登録
	CoilBank03b_2();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I follow the map&, facing the direction of where we're 
going to meet up with Haga-san&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm5050.nss"]

}
