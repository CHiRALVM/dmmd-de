//<continuation number="100">
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


scene dm5680.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	#bg301021_5_プラチナジェイル中通りセイ=true;
	#bg301011_5_プラチナジェイル大通りセイ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5690.nss";

//頭痛エフェクト用変数
	$HALevel=0;

}


scene dm5680.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");

	CreateTextureSP("絵ＥＶ200", 200, -732, -406, "cg/ev/l/evf10記憶の中の父の影_l.jpg");

	CreateTextureSP("絵ＥＶ100", 100, Center, Middle, "cg/ev/evf10記憶の中の父の影.jpg");

	Delete("上背景");

	SetVolumeEX("@SE*", 5000, 0, null);

	Wait(3000);

	CreateSE("SE01","se環境_自然_波01L");
	MusicStart("SE01",3000,700,0,1000,null,true);

	FadeDelete("絵色白", 3000, null, true);

	SetVolumeEX("SE01", 2000, 400, null);

	CreateVOICE("蒼葉","dm56/8000010b01");
	MusicStart("蒼葉",3000,500,0,1000,null,true);

	CreateVOICE("蓮","dm56/8000020c03");
	MusicStart("蓮",3000,400,0,1000,null,true);

	Wait(1000);

//※過去回想

//※父と初めて会った海辺を表示。静かな波の音。
//他に音はしない。
//逆光になっている父の影。

//※dm0220で録った音声を使用。
//※↓以下はほとんど聞こえないくらいの音量で、SEとしてループさせます。
//頭の中で複数がヒソヒソ絶え間なく会話してる感じです。

//幼少／ＳＥ用素材
//【白蒼葉】
//<voice name="白蒼葉" class="白蒼葉" src="voice/dm56/8000010b01">
//「ダメだ。コイツには近寄るな。こんなヤツを信じるな。俺の言うことを聞けよ。コイツは危ない。こんなヤツより俺を信じろ」

//※幼少／ＳＥ用素材
//【蓮（子供）】
//<voice name="蓮（子供）" class="蓮（子供）" src="voice/dm56/8000020c03">
//「彼を信じて。彼は必ず蒼葉の力になってくれる。彼の言うことに耳を傾けて。大丈夫、俺がいる。何も怖いことはない。大丈夫だから」


//※以下、dm0220で録った音声を使用。
//※ここでははっきり聞こえる。

	Move("絵ＥＶ200", 2000, @150, @200, Dxl1, false);
	FadeDelete("絵ＥＶ200", 2000, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm56/8000030b17">
"I'm not scared&, so come out of your little world&."

//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm56/8000040b17">
"It'll be all right&. You can always destroy it&."

//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm56/8000050b17">
"You can destroy it&, and then make a new one afterwards&.
 There's no end to the possibilities&."

//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm56/8000060b17">
"&.&.&.All right&, I've decided&. I'll give you a chance at
 a new life&."

{
	SetVolumeEX("蒼葉", 3000, 0, null);
	SetVolumeEX("蓮", 3000, 0, null);
}
//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm56/8000061b17">
"From today on&, your name is Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：３っつの声が重なる様子を文字でも表現
//※蒼葉の中のヒソヒソ声のSEがぴたっと止まる。

//※同時
//【蒼葉】
//<voice name="蒼葉" class="蒼葉" src="voice/dm56/8000070a01">
//「……あおば」

//※同時
//【白蒼葉】
//<voice name="白蒼葉" class="白蒼葉" src="voice/dm56/8000080b01">
//「……あおば」

//※同時
//【蓮】
//<voice name="蓮" class="蓮" src="voice/dm56/8000090a06">
//「……あおば」

	CreateTextureEX("あおば上", 200, Center, Middle, "cg/ef/txあおば01.png");
	Move("あおば上", 0, @0, @-50, null, true);

	CreateTextureEX("あおば中", 202, Center, Middle, "cg/ef/txあおば01.png");

	CreateTextureEX("あおば下", 201, Center, Middle, "cg/ef/txあおば01.png");
	Move("あおば下", 0, @0, @50, null, true);

	Fade("あおば*", 1000, 1000, null, true);

	CreateTextureEXadd("あおば中２", 203, Center, Middle, "cg/ef/txあおば02.png");
	SetShade("あおば中２",HEAVY);
	Wait(500);

	Move("あおば上", 500, @0, @50, Dxl1, false);
	Move("あおば下", 500, @0, @-50, Dxl1, true);

	Request("@text0010", UnLock);
	Delete("@text0010");

	CreateVOICE("蒼葉","dm56/8000070ex");
	MusicStart("蒼葉",0,1000,0,1000,null,false);
	SetBacklog("「……あおば」", "voice/dm56/8000070ex", 蒼葉);

	Fade("あおば中２", 1000, 1000, null, true);
	Wait(500);

	FadeDelete("あおば*", 2000, null, true);

	Wait(1000);
	Delete("蒼葉");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/8000100a01">
"&.&.&.Father&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE01", 5000, 0, null);

	CreateColorEXadd("絵白幕２", 1000, "WHITE");
	Fade("絵白幕２", 3000, 1000, null, true);

//※過去回想ここまで
//セイモニター入れる（千代子

	SetVolumeEX("@dm*", 1000, 0, null);

	Wait(32);


	CreateTextureEX("back", 200, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	CreateTextureEX("back2", 2000, Center, Middle, "cg/bg/bg304031_5_東江タワー廊下01セイ.jpg");
	CreateTextureEX("back3", 2000, Center, Middle, "cg/bg/bg304021_5_東江タワー前通りセイ.jpg");
	CreateTextureEX("back4", 2000, Center, Middle, "cg/bg/bg301021_5_プラチナジェイル中通りセイ.jpg");#bg301021_5_プラチナジェイル中通りセイ=true;
	CreateTextureEX("back5", 2000, Center, Middle, "cg/bg/bg301011_5_プラチナジェイル大通りセイ.jpg");#bg301011_5_プラチナジェイル大通りセイ=true;
	Zoom("back*", 0, 1050, 1050, null, true);
	Request("back*", Smoothing);
	Wait(500);
	CreateColorEXadd("絵色白", 5000, "FFFFFF");

	CreatePlainSP("絵板写", 2000);
	Delete("絵白幕２");
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


	Wait(1000);
	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE11","se物体_東江タワー_地割れ01");
	CreateSE("SE12","se物体_東江タワー_倒壊01");
	MusicStart("SE11",0,700,0,1000,null,false);

	Wait(1000);

	MusicStart("SE12",0,1000,0,1000,null,false);

	Wait(3000);

	SetVolumeEX("SE*", 3000, 0, null);

	Wait(5000);

//※次ファイル["dm5690.nss"]

}
