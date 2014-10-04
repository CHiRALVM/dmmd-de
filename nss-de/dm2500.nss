//<continuation number="70">
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


scene dm2500.nss_MAIN
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
	#bg304121_5_東江タワー東江の間セイ=true;
	#bg304031_5_東江タワー廊下01セイ=true;
	#bg304021_5_東江タワー前通りセイ=true;
	#bg301021_5_プラチナジェイル中通り2ゲーセンセイ=true;
	#bg301011_5_プラチナジェイル大通り2ゲーセンセイ=true;

	//▼演出処理を初期化
	Request("@SE21", UnLock);


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2510.nss";

	//▼頭痛レベル設定
	$HALevel=4;

}


scene dm2500.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

//嶋：ＢＧＭ引継ぎ注意
	SoundPlay("@dm006",0,450,true);

	FadeDelete("上背景", 0, null, true);

	Request("@SE21", UnLock);

	CreatePlainEX("絵板写", 2000);

	SetVolumeEX("@SE21", 2000, 0, null);

//※頭痛レベル：４
$HALevel=4;
	HAFade(2000, 0,false);
	FadeFFR2("絵板写", 0,1000, 200, 0, 0, 30,null, true);
	Delete("絵板写");

	CreateSE("SE01","se人体_心臓_鼓動01L");//あきゅん「ＳＥ：se人体_心臓_鼓動01」
	MusicStart("SE01",2000,500,0,800,null,true);

	CreateMaskEX("絵演白蒼葉", 0, 0, 0, "cg/data/slide_05_00_0.png", false);
	CreateTextureEX("絵演白蒼葉/絵演ＥＶ", 1100, Center, -80, "cg/ev/m/ev900もう１人の蒼葉_m.jpg");
	MoveFFP1("@絵演白蒼葉/絵演ＥＶ",60000);


	SetVolumeEX("SE01", 2000, 300, null);
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 800, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
It feels like almost all of my head is overcome with pain&.&.

I hear "his" voice all the time&.&.&.

The image of his smiling face floats in my mind&.&.&.

&.&.&.In the end&, the only thing I can do is destroy&.

Of course the story would end with me destroying myself&. 
Poetic justice&, was it?

But before he takes over&.&.&.

Before I let this power take charge&, I have to stop him&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※どくんどくんと心臓の音
//※白蒼葉が見える
	SetVolumeEX("SE01", 2000, 500, null);
	FadeDelete("絵色黒", 800, null, true);

{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/0000060a01">
"Aaaaaah&.&.&. Ugh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵演白蒼葉/絵演ＥＶ", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
　――――　I want to destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
　――――　I want to destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/0000070a01">
"Nnnh&, ugh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
　――――　Destroy&, destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
　――――　Destroy&, destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
　――――　Destroy everything　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0037]
&.&.&.Destroy!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	Wait(32);
//※白蒼葉の表示

//※セイの表示
//※白蒼葉とセイが共鳴→タワーの全てのモニターに
//セイの目か顔が映るって演出ができると、
//セイがタワーを壊したってわかりやすいんですが…。素材がないかな。

	CreateTextureEX("back", 200, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");#bg304121_5_東江タワー東江の間セイ=true;
	CreateTextureEX("back2", 2000, Center, Middle, "cg/bg/bg304031_5_東江タワー廊下01セイ.jpg");#bg304031_5_東江タワー廊下01セイ=true;
	CreateTextureEX("back3", 2000, Center, Middle, "cg/bg/bg304021_5_東江タワー前通りセイ.jpg");#bg304021_5_東江タワー前通りセイ=true;
	CreateTextureEX("back4", 2000, Center, Middle, "cg/bg/bg301021_5_プラチナジェイル中通り2ゲーセンセイ.jpg");#bg301021_5_プラチナジェイル中通り2ゲーセンセイ=true;
	CreateTextureEX("back5", 2000, Center, Middle, "cg/bg/bg301011_5_プラチナジェイル大通り2ゲーセンセイ.jpg");#bg301011_5_プラチナジェイル大通り2ゲーセンセイ=true;
	Zoom("back*", 0, 1050, 1050, null, true);
	Request("back*", Smoothing);
	Wait(500);
	CreateColorEXadd("絵色白", 5000, "FFFFFF");

	CreatePlainSP("絵板写", 2000);
	Delete("絵ＥＶ");
	Delete("絵演白蒼葉/絵演ＥＶ");
	SetBlur("絵板写", true, 3, 500, 50, false);
	Fade("back", 0, 1000, null, true);

	Zoom("絵板写", 300, 2000, 2000, Axl1, false);
	FadeDelete("絵板写", 300, null, false);

	CreateSE("SE01","se擬音_効果_力蒼葉01");
	CreateSE("SE02","se物体_東江タワー_地鳴り01aL");
	MusicStart("SE01",0,700,0,200,null,false);
	MusicStart("SE02",4000,700,0,1000,null,true);

	SeiMonitorCreate01();

	Shake("back*", 60000, 0, 1, 0, 30, 1000, null, false);
	Shake("sei*", 60000, 0, 1, 0, 30, 1000, null, false);

	SeiMonitorStart01();

	Fade("絵色白", 100, 1000, null, true);
	Fade("back2", 0, 1000, null, true);
	Fade("絵色白", 200, 0, null, true);

	Wait(500);

	Fade("絵色白", 100, 1000, null, true);
	Fade("back3", 0, 1000, null, true);
	Fade("絵色白", 200, 0, null, true);

	Wait(500);

	Fade("絵色白", 100, 1000, null, true);
	Fade("back4", 0, 1000, null, true);
	Fade("絵色白", 200, 0, null, true);

	Wait(500);

	Fade("絵色白", 100, 1000, null, true);
	Fade("back5", 0, 1000, null, true);
	Fade("絵色白", 200, 0, null, true);

	Wait(500);

	Fade("絵色白", 500, 1000, null, true);

	CreateSE("SE10","se物体_東江タワー_地割れ01");
	MusicStart("SE10",0,700,0,1000,null,false);

	Wait(1000);
	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);
	Wait(2000);

//※次ファイル["dm2510.nss"]

}
