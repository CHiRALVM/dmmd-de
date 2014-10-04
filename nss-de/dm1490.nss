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


scene dm1490.nss_MAIN
{
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
	#bg304091_5_東江タワー中ホールセイ=true;
	#bg304031_5_東江タワー廊下01セイ=true;
	#bg304021_5_東江タワー前通りセイ=true;
	#bg301021_5_プラチナジェイル中通り1赤セイ=true;
	#bg301011_5_プラチナジェイル大通り1赤セイ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1500.nss";

	//▼頭痛レベル設定
	$HALevel=5;

}


scene dm1490.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色白", 5000, "FFFFFF");
	OnBG(100,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);

//	SoundPlay("@dm018",0,450,true);

	Delete("上背景");
	FadeDelete("絵色白", 3000, null, true);

	Wait(500);

//※元のオーバルタワーの背景に戻る


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.We're back&.

We're back&. To the real world&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/9000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg304091_5_東江タワー中ホール.jpg");
	Zoom("絵背景", 0, 1050, 1050, null, true);

//あきゅん「演出：白蒼葉の誘惑」

	Fade("絵背景", 0, 300, null, false);
	Shake("絵背景", 1000, 3, 10, 0, 0, 500, null, false);

//※ずきん、ずきんと頭痛
//※頭痛レベル：４
	//頭痛エフェクト(0)
$HALevel=4;
	HAFade(2000, 0,true);
	Wait(150);
	//頭痛エフェクト(0)
	Shake("絵背景", 500, 3, 10, 0, 0, 500, null, false);

	HAFade(2000, 0,true);
	Wait(300);

	FadeDelete("絵背景", 500,null,false);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 250, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
My head&, hurts&.&.&.<k>

{
	Fade("絵色黒", 500, 500, null, false);
}
My vision is spinning&. I feel like I'm going to vomit&.

{
	Fade("絵色黒", 500, 750, null, false);
}
At some point&, I fall to the floor&.

{
	Fade("絵色黒", 500, 950, null, false);
}
But my body feels so heavy that I can't get up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//SoundPlay("@dm006",0,450,true);

	CreatePlainSP("絵板写", 10000);
	Fade("絵色黒", 100, 1000, null, true);

//※白蒼葉の幻影が一瞬映る
	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,Middle,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);

	CreateColorSP("絵演黒蒼葉誘惑黒隠", 1110, "000000");
//あきゅん「※：終盤で頭痛も酷いので黒いフチは消してます」
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0,0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	Delete("絵板写");

	CreateSE("SEL01","se人体_心臓_鼓動01");
	MusicStart("SEL01",0,700,0,1000,null,false);
	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
　――――　You're already finished　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――――　This is your end　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.Someone's voice&.

They keep telling me to "Destroy"&.
Whose voice is that&.&.&.

Is it because of Scrap&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/9000020a02">
"&.&.&.Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");

	St("C",740, @0,@0,"fu紅雀_バーサク正気_sad3");
	FadeSt("C",0,true);

	CreatePlainSP("絵板写", 800);
	SetShade("絵板写", HEAVY);

	DrawTransition("絵色黒", 2000, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", false);
	Wait(1500);
	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Someone shakes me awake and I open my eyes&, and I can see 
a blurry version of Koujaku's worried face&.

Those eyes&.&.&. those are the eyes of the childhood friend I know&.

I'm glad&.&.
That he came back&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_shock4",3500,"fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/9000030a01">
"&.&.&.I'm glad&.&.&. Ugh&."

{	St("C",740, @0,@0,"fu紅雀_バーサク正気_sad2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/9000040a02">
"What's wrong? Where does it hurt?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵色黒", 5000, "000000");

	DeleteAllSt(0,true);

//※ＳＥ：どくん、と心臓の音
	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,Middle,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);

	CreateColorSP("絵演黒蒼葉誘惑黒隠", 1110, "000000");
//あきゅん「※：終盤で頭痛も酷いので黒いフチは消してます」
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0,0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	Delete("絵板写");

	CreateSE("SEL00","se擬音_精神_超音波01L");
	MusicStart("SEL00",3000,300,0,600,null,true);

	CreateSE("SEL01","se人体_心臓_鼓動02L");
	MusicStart("SEL01",3000,500,0,400,null,true);
	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,800,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
　――――　This is the end　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SEL00", 3000, 500, null);
	SetVolumeEX("SEL01", 1000, 700, null);
	SetFrequency("SEL01", 1000, 700, null);
	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
　――――　It's already come　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SEL00", 1000, 1000, null);
	SetVolumeEX("SEL01", 1000, 900, null);
	SetFrequency("SEL01", 1000, 1200, null);

//{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/9000050a01">
"&.&.&.The voice&.&.&."

{
	SetVolumeEX("SEL00", 1000, 1250, null);
	SetVolumeEX("SEL01", 1000, 1100, null);
	SetFrequency("SEL01", 1000, 1400, null);
//	Fw("fw紅雀_バーサク正気_angry4");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/9000060a02">
"Voice? Whose voice? Hey!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SEL00", 1000, 1500, null);
	SetVolumeEX("SEL01", 1000, 1200, null);
	SetFrequency("SEL01", 1000, 1600, null);

	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,1300,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　――――　Give up　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);
	Wait(2000);

	CreateTextureEX("絵黒蒼葉之影零", 5010, Center, Middle, "cg/ev/ev900もう１人の蒼葉.jpg");
	SetTone("絵黒蒼葉之影零", NegaPosi);
	DrawTransition("絵黒蒼葉之影零", 1, 0, 0, 100, null, "cg/data/blind_01_00_0.png", true);
	CreateTextureEX("絵黒蒼葉之影一", 5000, Center, Middle, "cg/ev/ev900昔の荒れてた蒼葉.jpg");
	SetTone("絵黒蒼葉之影一", NegaPosi);
	CreateTextureEX("絵黒蒼葉之影二", 5000, Center, Middle, "cg/ev/ev900ライム対戦蒼葉VSウサギ頭.jpg");
	SetTone("絵黒蒼葉之影二", NegaPosi);
	CreateTextureEX("絵黒蒼葉之影三", 5000, Center, Middle, "cg/ev/ev061全員集合a.jpg");
	SetTone("絵黒蒼葉之影三", NegaPosi);
	CreateTextureEX("絵黒蒼葉之影四", 5000, Center, Middle, "cg/ev/ev124紅雀強姦未遂b.jpg");
	SetTone("絵黒蒼葉之影四", NegaPosi);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
　――――　It's over for you　――――

</PRE>
	SetTextM();
	TypeBeginF(1000);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");

	CreateSE("SEL01","se擬音_効果_ノイズ01L");
	MusicStart("SEL01",0,10,0,1000,null,true);
	CreateProcessEX("プロセスア", "LProc_dm1490_01aAct");
	CreateProcessEX("プロセスイ", "LProc_dm1490_01b1Act");
	Request("プロセスア", Start);
	Request("プロセスイ", Start);
	SetVolumeEX("SEL01", 10000, 1200, null);
	Zoom("絵黒蒼葉之影零", 20000, 2000, 2000, null, false);
	DrawTransition("絵黒蒼葉之影零", 10000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);

//※白蒼葉の顔がハッキリ見える
//※どくんと心臓の音＆ひどい頭痛
//※頭痛レベル：ここで５
$HALevel=5;
	HAFade(5000, 0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/9000070a01">
"Ahhhhhhhhhhhhhhhhhhhhhh!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Request("プロセスア", Stop);
	Request("プロセスイ", Stop);
	Delete("絵黒蒼葉之影*");
	SetVolumeEX("SE*", 0, 0, null);
	Delete("プロセス*");

	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
&.&.&.&.&.

&.&.&.&.&.

&.&.&.&.&.I know&.

&.&.&.&.&.I saw everything&.

&.&.&.&.Everything&.

Scrap's true colors&.&.&.

The one always telling me to "Destroy"&.&.&.

&.&.&.Him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	CreateTextureSP("絵効果01", 1050, Center, Middle, "cg/ev/m/ev900もう１人の蒼葉_m.jpg");
	CreateTextureSPsub("絵効果02", 1200, Center, Middle, "cg/ev/m/ev900もう１人の蒼葉_m.jpg");
	Zoom("絵効果02", 0, 1005, 1005, null, true);

	FadeDelete("絵色黒", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
He&.&.&. is me&.

My instincts&.

A part of my consciousness&, my "Desire"&.

The desire to destroy everything&.
To do nothing but destroy&.

To bring death to everything&.

He's the part of me that wishes for that&.

The destructive power of Scrap&.
The power comes from him&.

That's why his presence becomes more apparent whenever I 
use Scrap&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	Delete("絵効果*");
	Delete("絵色黒");
	FadeDelete("絵フラッシュ白", 300, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
And now&.

Because I overused my power&, the balance between us is 
crumbling&.

Because of that&.&.&.

He's begun to eat away at my will&.

He'll destroy every part of my consciousness&, and make 
use of my body&.

For the destruction of everything&.
The death of everything&.

That's his wish&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068a]
But&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 0, 1000, null, true);

	CreateColorSPover("絵擬似回想色", 4990, "624a2b");
	CreateTextureSPmul("絵擬似回想枠", 4990, Center, Middle, "cg/ef/effi回想01.jpg");

	CreateTextureSP("絵擬似回想壱", 4980, Center, Middle, "cg/ev/ev137紅雀無双b.jpg");

	Fade("絵色黒", 800, 0, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068b]
If I hadn't used my power&, I wouldn't have been able to 
pull back Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 800, 1000, null, true);
	CreateTextureSP("絵擬似回想壱", 4980, Center, Middle, "cg/ev/ev142幼少紅雀と刺青.jpg");
	Fade("絵色黒", 800, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068c]
It was impossible for me to do it alone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 800, 1000, null, true);
	CreateTextureSP("絵擬似回想壱", 4980, Center, Middle, "cg/ev/ev120幼少時の紅雀と蒼葉.jpg");
	Fade("絵色黒", 800, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068d]
So&.&.&. so I'm glad&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 800, 1000, null, true);
	Delete("絵擬似回想*");

//	Fw("fw紅雀_バーサク正気_angry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/9000080a02">
"Hey&, Aoba&, what's wrong?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/9000090a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
In the end&.&.&. I can't let myself destroy things&.

I'll be the one destroyed in the end&.

I can see all the destruction and massacres "I" would 
commit&.

Breaking people&, killing them&.&.&.

People I love&, strangers&, everything&.&.&.

&.&.&.Just the thought makes me want to vomit&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色黒", 0, null, true);
	FadeDelete("絵色白", 1000, null, false);

//	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/9000100a01">
"&.&.&.Urk&.&.&. uk&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「↓：ここから現実に白蒼葉が現れることを意味して少し変わった出し方する」

//※どくんどくんと心臓の音
//※白蒼葉が見える
	CreateSE("SE01","se人体_心臓_鼓動01L");//あきゅん「ＳＥ：se人体_心臓_鼓動01」
	MusicStart("SE01",0,500,0,800,null,true);

	CreateMaskEX("絵演白蒼葉", 0, 0, 0, "cg/data/slide_05_00_0.png", false);
	CreateTextureEX("絵演白蒼葉/絵演ＥＶ", 1100, Center, -80, "cg/ev/m/ev900もう１人の蒼葉_m.jpg");
	MoveFFP1("@絵演白蒼葉/絵演ＥＶ",60000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
My head&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵演白蒼葉/絵演ＥＶ", 500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
　――――　I want to destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
　――――　I want to destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵演白蒼葉/絵演ＥＶ", 500, 0, null, false);

{	Fw("fw蒼葉_通常_pinch");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/9000110a01">
"Guh&, ah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵演白蒼葉/絵演ＥＶ", 500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
　――――　Destroy&, destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
　――――　Destroy&, destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
　――――　Destroy everything　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//Fade("絵演白蒼葉/絵演ＥＶ", 3000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0087]
&.&.&.Destroy&.&.&.!!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_バーサク正気_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0088]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/9000120a02">
"Aoba? Hold on! Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/9000130a01">
"Ahhhhhh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※白蒼葉の表示

	//Fade("絵演白蒼葉/絵演ＥＶ", 150, 1000, null, true);

	CreateTextureEX("back", 200, Center, Middle, "cg/bg/bg304091_5_東江タワー中ホール.jpg");#bg304091_5_東江タワー中ホールセイ=true;
	CreateTextureEX("back2", 2000, Center, Middle, "cg/bg/bg304031_5_東江タワー廊下01セイ.jpg");#bg304031_5_東江タワー廊下01セイ=true;
	CreateTextureEX("back3", 2000, Center, Middle, "cg/bg/bg304021_5_東江タワー前通りセイ.jpg");#bg304021_5_東江タワー前通りセイ=true;
	CreateTextureEX("back4", 2000, Center, Middle, "cg/bg/bg301021_5_プラチナジェイル中通り1赤セイ.jpg");#bg301021_5_プラチナジェイル中通り1赤セイ=true;
	CreateTextureEX("back5", 2000, Center, Middle, "cg/bg/bg301011_5_プラチナジェイル大通り1赤セイ.jpg");#bg301011_5_プラチナジェイル大通り1赤セイ=true;
	Zoom("back*", 0, 1050, 1050, null, true);
	Request("back*", Smoothing);
	Wait(500);
	CreateColorEXadd("絵色白", 5000, "FFFFFF");

	CreatePlainSP("絵板写", 2000);
	Delete("絵演白蒼葉/絵演ＥＶ");
	SetBlur("絵板写", true, 3, 500, 50, false);
	Fade("back", 0, 1000, null, true);

	Zoom("絵板写", 300, 2000, 2000, Axl1, false);
	FadeDelete("絵板写", 300, null, false);

	CreateSE("SE01","se擬音_効果_力蒼葉01");
	CreateSE("SE02","se物体_東江タワー_地鳴り01aL");
	MusicStart("SE01",0,700,0,200,null,false);
	MusicStart("SE02",4000,700,0,1000,null,true);
//嶋：一時とばし_120119

//※セイの表示
//※白蒼葉とセイが共鳴→タワーの全てのモニターに

	SeiMonitorCreate02();

	Shake("back*", 60000, 0, 1, 0, 30, 1000, null, false);
	Shake("sei*", 60000, 0, 1, 0, 30, 1000, null, false);

	SeiMonitorStart02();

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
	SetVolumeEX("SE*", 1500, 0, null);
	SetVolumeEX("@dm*", 1500, 0, null);
	Wait(1500);

//※次ファイル["dm1500.nss"]

}
