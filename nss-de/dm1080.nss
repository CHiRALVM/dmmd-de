//<continuation number="520">
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


scene dm1080.nss_MAIN
{

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("hime0250","Captive Princess","Please Save Me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please Save Me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please Save Me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please Save Me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please Save Me",true,true);
	CoilMailAdd("dm1030a","Haga-san","Secret Path to Platinum Jail",true,true);

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
	#bg301011_5_プラチナジェイル大通り1赤=true;

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("dm1080a","Koujaku","(No Subject)",false,true);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1090.nss";

}


scene dm1080.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	CreateColorSPadd("絵色白", 4000, "FFFFFF");

	OnBG(10,"bg301011_5_プラチナジェイル大通り1赤");
	FadeBG(0,true);

	Delete("上背景");

	CreateSE("SE01","se物体_ドア鉄_扉開く01b");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(1500);

	CreateSE("SE02","se物体_ドア鉄_扉開く01a");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	FadeDelete("絵色白", 3000, Dxl1, false);
	DrawDelete("絵色黒", 2000, 100, DxlAuto, "slide_06_00_0", true);

	SoundPlay("@dm004",0,450,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We go through the door&, and the bright red color of the 
whole landscape before us illuminates our faces&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景101", 101,  -523, -401, "cg/bg/l/bg301011_5_プラチナジェイル大通り1赤_l.jpg");
	Move("絵背景101", 1500, -1019, -146, Dxl1, false);
	Fade("絵背景101", 1500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
And the buildings&.&.&. Their designs resemble old Japanese  
architecture&, but with a little twist&. 

Countless stars are shining above us&. One could never even dream of this in the Old Resident District&.

{	FadeDelete("絵背景101", 500, null, true);}
Platinum Jail's weather and time zones are all controlled&, and it's usually set to night time&.

The idea behind it was so that guests could party any day&, any time&, apparently&.&.&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -512, -140, "cg/bg/l/bg301011_5_プラチナジェイル大通り1赤_l.jpg");
	Move("絵背景100", 1000, -512, -41, Dxl1, false);
	Fade("絵背景100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The first thing I focus on is the giant tower ahead&, the 
symbol of Platinum Jail&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_angry");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000010a01">
"So that's Oval Tower&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I've heard rumors about it&, but this is my first time 
seeing it&.

The symbol of Platinum Jail&.&.&.

I feel uncomfortable&, like someone's watching me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000020a02">
"Flame Willow&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Koujaku reads the sign with the name of the area written 
on it and looks around&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

	St("C",740, @0,@0,"st紅雀_通常_worry3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000030a02">
"This place has a weird feeling to it&. We don't know which
 way to go&, so let's just gather information for now&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000040a01">
"Right&."

{	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000050a02">
"Is there anything written about this area on that
 invitation?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000060a01">
"I'll check&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

//あきゅん「コイル：ここって素材あるっけか？」
	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
	MusicStart("SE01",0,700,0,1000,null,false);

//★バンク
	CoilBank04();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
A map of Platinum Jail opens on my Coil from the 
invitation&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_normal2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000070a01">
"A map of Platinum Jail&, huh? And there's a mark on it 
 too?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm10/8000080a06">
"I believe that's where we're staying&."

{		Fw("fw紅雀_通常_normal");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000090a02">
"Well then&, let's go see it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPict",300,-50,370);
	//○コイル待ち
	CoilWait();

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000100a01">
"Yeah&. Ren&, navigate us there&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//Fw("fwmギャルC_刺青_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【女Ａ】
<voice name="女Ａ" class="女Ａ" src="voice/dm10/8000110e32">
"Oh?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
I turn around to the sound of someone's voice and see two 
girls standing there&.

They're dressed flashily&. But their posture and expressions
give them a sort of elegance&. 

On top of it all&, if they're in Platinum Jail&, it's likely that they're daughters of rich families or something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmギャルC_刺青_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【女Ａ】
<voice name="女Ａ" class="女Ａ" src="voice/dm10/8000120e32">
"Those are some wonderful clothes you're wearing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
One of the girls looks to Koujaku and points a finger at 
him&.

At first I thought she was someone Koujaku knew&, suddenly 
calling out to him like that&, but that would be impossible&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0048]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000130a02">
"Oh&, thank you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルC_刺青_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【女Ａ】
<voice name="女Ａ" class="女Ａ" src="voice/dm10/8000140e32">
"And you even have such an adorable little bird!"

{	Fw("fw紅雀_通常_smile");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000150a02">
"His name is Beni&."

{	Fw("fwAMベニ_通常_normal");}
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm10/8000160b16">
"Yo&."

{	Fw("fwmギャルA_ドライ_normal");}
//【女Ｂ】
<voice name="女Ｂ" class="女Ｂ" src="voice/dm10/8000170e33">
"Were you guys always around this area?"

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000180a02">
"We just got here&, actually&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルC_刺青_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【女Ａ】
<voice name="女Ａ" class="女Ａ" src="voice/dm10/8000190e32">
"Oh really? You guys don't look like lost tourists at all!"

{	FwPro("fw紅雀_通常_normal",1000,"fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000200a02">
"Well&, now&.&.&. &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
Koujaku forces a sweet smile&, giving attention to the girl&.

On one of the girls' necks is a tattoo of a large black 
spider&.

And above it&, a smaller&, golden spider crawls around&. 

The gold one must be her Allmate&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmギャルC_刺青_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【女Ａ】
<voice name="女Ａ" class="女Ａ" src="voice/dm10/8000210e32">
"What is it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_smile2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
Koujaku tilts his head to the side as another forced smile grows on his face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0066]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000220a02">
"Oh&, sorry abut that&. I zoned out a bit&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fwmギャルA_ドライ_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【女Ｂ】
<voice name="女Ｂ" class="女Ｂ" src="voice/dm10/8000230e33">
"Oh&."

{	Fw("fwmギャルC_刺青_normal");}
//【女Ａ】
<voice name="女Ａ" class="女Ａ" src="voice/dm10/8000240e32">
"Are you interested in me?"

{	Fw("fw紅雀_通常_smile");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000250a02">
"Well&, aren't men always interested in women?"

{	Fw("fwmギャルA_ドライ_normal");}
//【女Ｂ】
<voice name="女Ｂ" class="女Ｂ" src="voice/dm10/8000260e33">
"Heehee&."

{	Fw("fwmギャルC_刺青_normal");}
//【女Ａ】
<voice name="女Ａ" class="女Ａ" src="voice/dm10/8000270e32">
"You're pretty funny&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
The girls give off a satisfied&, extremely high pitched 
laugh&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmギャルC_刺青_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【女Ａ】
<voice name="女Ａ" class="女Ａ" src="voice/dm10/8000280e32">
"We were just going to a party&. Not anything formal&, just a place to have some fun&."

{	Fw("fwmギャルC_刺青_normal");}
//【女Ａ】
<voice name="女Ａ" class="女Ａ" src="voice/dm10/8000290e32">
"You could join us if you want&."

{	Fw("fw紅雀_通常_normal");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000300a02">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
Koujaku goes silent at their invitation&.

He's going to flat out refuse them&.

&.&.&.Well&, I thought he would&, but he isn't giving them an 
answer right away&.

Hey now&, he can't possibly be thinking of saying yes&, 
right?

It's a bad idea&, no matter how much you like girls&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


{	Fw("fwmギャルA_ドライ_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【女Ｂ】
<voice name="女Ｂ" class="女Ｂ" src="voice/dm10/8000310e33">
"This is paradise&, and we're here to guide you&, you know?
 It's just like home here&. So don't be so uptight&, just
 take it easy!"

{	Fw("fw紅雀_通常_smile");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000320a02">
"&.&.&.You're right&. If you insist&, I'd love to have your
 company&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000330a01">
"&.&.&.Whuh!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
What did he just say&.&.&.!?

I'm taken aback by his answer&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000340a01">
"Hey&, Koujaku&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
I raise my voice&, and Koujaku leans close into my ear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_cool2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000350a02">
"This is so I can get some information&. Work with me here&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000360a01">
"Not like this&.&.&."

{	St("C",740, @0,@0,"bu紅雀_通常_normal");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000370a02">
"Don't worry about it&. We always have our Coils to contact
 one another&.&.&. Here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se物体_コイル_受信蒼葉");//あきゅん「ＳＥ：se物体_コイル_受信蒼葉」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0106]
Koujaku fiddles with his Coil&. Mine rings right afterwards&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");//あきゅん「ＳＥ：se物体_コイル_操作音01」
	MusicStart("SE01",0,700,0,1000,null,false);

//★『徒歩コイル確認』

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();

	//○③メール追加（リストが出ていないとき）
	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("dm1080a","Koujaku","(No subject)",false,true);

	//■④メール設置『CoilMailSet("メールナット名",X位置,Y位置)』
	CoilMailSet("dm1080a",400,100);

	//▼①コイル演出表示
	CoilStartFade();
	//▼④メール表示１（通常表示）
	CoilMailFade();
	//▼④メール表示２（メールリストからの遷移）『CoilMailFade_MList("メールナット名",秒数)』
	//CoilMailFade_MList("dm1030a",500);
	//○コイル待ち
	CoilWait();

	//×④メール収納
	//CoilMailDelete();

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0107]
//コイルメールボックス表示
//差出人：紅雀
//件名：なし
//本文：⇒ナット名：dm1080a
//あとでさっきの施設へ行く。地図送っといてくれ。

//</PRE>
//	SetText();
//	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(1000);

	Fw("fw蒼葉_通常_worry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000380a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilMail",300,-50,370);
	//○コイル待ち
	CoilWait();

	Fw("fwmギャルC_刺青_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【女Ａ】
<voice name="女Ａ" class="女Ａ" src="voice/dm10/8000390e32">
"Is he okay over there?"

{	Fw("fw紅雀_通常_smile");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000400a02">
"Yeah&, I'm alone&. So I can have you all to myself&."

{	Fw("fwmギャルA_ドライ_normal");}
//【女Ｂ】
<voice name="女Ｂ" class="女Ｂ" src="voice/dm10/8000410e33">
"Hmhm&."

{	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/8000420a02">
"See ya&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE11","se人体_足音_歩く01L");//あきゅん「ＳＥ：se人体_足音_歩く01L」
	MusicStart("SE11",0,700,0,1000,null,true);
	DeleteAllSt(200,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000430a01">
"Koujaku&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
Koujaku puts one arm around each of the two girls&, turns 
his back to me&, and walks away&.

&.&.&.&.&.

I stand still&, ditched&, but don't once turn around to 
watch Koujaku leave&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000440a01">
"&.&.&.Wh-What's wrong with that guy&.&.&.?"

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000450a01">
"I can't believe he'd do something so awful as picking them up and leaving me here&. Right&, Ren?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0126]
Ren pokes his head out of my bag&, and I look to see if he'sas surprised as I am&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_cranky");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0127]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000460a01">
"I know he's a womanizer&, but I never thought he'd ever go
 that far&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm10/8000470a06">
"It's just how Koujaku is&.&.&. but that action back there was not appropriate&."

{	Fw("fw蒼葉_通常_worry2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000480a01">
"He should know that too&. He said it was for gathering
 information&, but seriously&.&.&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm10/8000490a06">
"It pains me to see him be so shallow of a person&.&.&."

{	Fw("fw蒼葉_通常_sigh3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000500a01">
"Me too&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0138]
I complain to Ren and feel a general uneasiness grow in my stomach&.

I don't want to even think about this&.&.&.

I've just lost a little of my faith in Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
I didn't think he'd go and play around with girls right now&.&.&.

&.&.&.But I don't know what I should do about it&, either&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_cranky3");}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/8000510a01">
"Well&, can't help it now&. I'll go get some info by myself&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm10/8000520a06">
"Right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm1090.nss"]

}
