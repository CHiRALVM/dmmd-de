//<continuation number="570">
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


scene dm0610.nss_MAIN
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
	#ev061全員集合=true;
//	#bg102021_5_平凡地下室=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0620.nss";

}


scene dm0610.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg102021_5_平凡地下室");
	FadeBG(0,true);

	SoundPlay("@dm002",0,450,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
In the storehouse in Heibon's basement&, we start a make-
shift meeting held around a table&, sitting on the sofas&. 

Haga-san seems like he's choosing the smart way to do 
things; he shows us down here and goes back upstairs to 
the shop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev061全員集合.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Koujaku&, Clear&, Mink&, and I sit down on a sofa&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ100", 300, null, true);

	Fw("fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000010a02">
"&.&.&.So&, let's continue off where we were&. What happened
 to Tae-san? She isn't responding at all&. Just like you
 sometimes&."

{	Fw("fw紅雀_通常_cool");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000020a02">
"We know Tae-san hates Coils&. So that might just be the
 issue here&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000030a01">
"That's&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I hesitate to speak&, and Koujaku flashes a frown&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000040a02">
"What happened?"

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000050a01">
"&.&.&.She was taken&."

{	Fw("fw紅雀_通常_angry4");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000060a02">
"By who!?"

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000070a05">
"Morphine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Koujaku laughs scornfully at Mink's words&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_mad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000080a02">
"Hah? Hey now&, don't try to pull my leg here&. Morphine? The ones who mysteriously disappeared? Tae-san doesn't do Rib&, you know that right?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000090a01">
"&.&.&.Koujaku&. I saw it&. Morphine's tag&."

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000100a02">
"&.&.&.Are you serious?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
When I came home and Granny wasn't there&, when I met Mink&.&.And when I shortly spoke with a member of Morphine&.&.&. No&,  Dry Juice&. 

Coming back to the topic of Mink kidnapping me would only  fan the flames&, so I left it alone&.

Koujaku listened with much seriousness&, let out a small 
sigh&, and leaned back on his chair&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 1000, -832, -140, "cg/ev/l/ev061全員集合_l.jpg");
	CreateTextureSP("絵背景弐", 900, 50, 0, "cg/ev/l/ev061全員集合_l.jpg");

//※ＳＥ：ソファーに凭れる
	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景", 500, -832, -96, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);

//	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000110a02">
"It's unbelievable&. Maybe "Morphine" might just be some
 guys trying to trick you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Koujaku glares Mink's way with obvious hostility&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000120a02">
"So those guys are the culprits&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵背景", 500, @-50, @0, Dxl1, false);
	Move("絵背景弐", 500, @-50, @0, Dxl1, false);
	Fade("絵背景", 500, 0, null, true);

//	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000130a05">
"If you don't believe it&, then you don't have to push
 yourself to join in&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");

	CreateTextureSP("絵マスク枠", 1100, 20, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク右", 100, 20, 0, "cg/mask/ciスラッシュ_05_01.png", true);
	SetAlias("絵マスク右","絵マスク右");
	CreateTextureSP("絵マスク右/絵背景", 1000, -450, -50, "cg/ev/l/ev061全員集合_l.jpg");

	CreateMask("絵マスク左", 1050, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureSP("絵マスク左/絵背景", 1000, 0, 0, "cg/ev/l/ev061全員集合_l.jpg");

	DrawDelete("絵板写", 500, 100, null, "blind_02_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0048]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000140a02">
"Oh? Why do you feel the need to say that&, you prick?"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000160a02">
"You haven't come up with jack shit here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000170a05">
"You're not the one who decides that&, he does&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Mink points to me with his pipe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000180a05">
"In exchange for helping with the search for his
 grandmother&, he accepted my conditions&. That's
 what we agreed on&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000190a02">
"What the hell&.&.&.What do you mean&, accepted your
 conditions?"

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000200a05">
"I have no obligation to tell you&. I'm just here to point
 out where her general location is&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000210a05">
"And to pursue the members of the team who abducted her&,
 and relay that information&. If you don't believe that
 either&, do whatever you want&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ev/l/ev061全員集合_l.jpg");
	Zoom("絵背景", 0, 1600, 1600, null, true);
	SetShade("絵背景", MEDIUM);
	Request("絵背景", Smoothing);
	Move("絵背景", 0, -1635, 287, null, true);

	St("C",340, @0,@0,"fu紅雀_通常太刀なし_angry3");
	FadeSt("C",0,true);

	FadeDelete("絵マスク枠",10,null);
	Fade("絵背景弐", 10, 0, null, false);
	Move("絵マスク右",500,@1024,@0,Dxl1,false);
	Move("絵マスク左",500,@-1024,@0,Dxl1,true);

	Delete("絵背景弐");
	Delete("絵マスク*");

//	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000220a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Koujaku looks at me&. What's with his eyes? 
It's as if they're asking me questions&.

I&.&.&.

&.&.&.I already decided on this&.

I can understand Koujaku's anxieties and doubts all too 
well&. <k>It's not like I trust Mink in the least either&.

But no one else knows where Granny could be&.

I don't know if blindly searching would work at all&.

All I can do&.&.&. is take a bet on him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000230a01">
"&.&.&.Koujaku&, I want to save Granny&. I can't think of any
 other way&."

{	St("C",740, @0,@0,"fu紅雀_通常太刀なし_angry");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000240a02">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000250a01">
"Please help me with this&."

{	St("C",740, @0,@0,"fu紅雀_通常太刀なし_worry");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000260a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu紅雀_通常太刀なし_think");
	FadeSt("C",200,true);

	Wait(1000);

	St("C",740, @0,@0,"fu紅雀_通常太刀なし_cool");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Koujaku's anger gradually fades from his face&, and his eyesgain a spark to them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu紅雀_通常太刀なし_cool2");
	FadeSt("C",200,true);
//	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000270a02">
"&.&.&.I got it&. That's all you have to say&. I'm not sold&, but I just have to trust you&."

{	Fw("fw蒼葉_通常_smile");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000280a01">
"Thanks&."

{
	St("C",740, @0,@0,"fu紅雀_通常太刀なし_normal");
	St("C",740, @0,@0,"fu紅雀_通常太刀なし_angry3");
	FadeSt("C",200,true);
	FadeStPro("C", 2800, 200);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000290a02">
"I don't mind if it's for you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteSt("C", 0,true);

	CreateTextureSP("絵背景", 1000, -450, -50, "cg/ev/l/ev061全員集合_l.jpg");

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
Koujaku once again scowls at Mink&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵マスク枠", 1100, 20, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク右", 100, 0, 0, "cg/mask/ciスラッシュ_05_01.png", true);
	SetAlias("絵マスク右","絵マスク右");
	CreateTextureSP("絵マスク右/絵背景", 1000, -450, -50, "cg/ev/l/ev061全員集合_l.jpg");
	CreateMask("絵マスク左", 1050, 20, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureSP("絵マスク左/絵背景", 1000, 0, 0, "cg/ev/l/ev061全員集合_l.jpg");

	Delete("絵背景");
	CreateTextureSP("絵背景弐", 100, 0, 0, "cg/ev/l/ev061全員集合_l.jpg");

	DrawDelete("絵板写", 500, 100, null, "blind_02_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
Mink breathes out a puff of white smoke&, and looks to the  staircase&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵マスク*");
	Delete("絵マスク/絵*");

	DrawDelete("絵板写", 500, 100, null, "blind_02_00_0", true);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000300a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0087]
At first I thought he as trying to rile up Koujaku by 
ignoring him&.&.&. but he looks like he's observing something instead&.

Is something there?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000310a05">
"Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：羽音
	CreateSE("SE01","se動物_動作_羽ばたき去る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景弐", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Mink turns his chin to his cockatoo&.

The cockatoo flaps its wings and goes out the door to the  first floor&.

{
	CreateSE("SE01","se物体_蒼葉宅自室扉_扉開く強く01");
	MusicStart("SE01",0,500,0,800,null,false);
}
I hear clattering&, and he's brought something back with 
him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwAMウサギモドキ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm06/1000320c09">
"P!"

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000330a02">
"What's that?"

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/1000340a04">
"A block?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000350a01">
"This&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateMaskSetSPTate("絵窓", 3010);//ナット名、優先度
	CreateTextureSP("絵窓/絵背景", 100, Center, Middle, "cg/bg/m/bg102021_5_平凡地下室_m.jpg");
	CreateTextureSP("絵窓/絵立絵", 1000, Center, Middle, "cg/fu/x/fuAMウサギモドキ_通常_normal_x.png");
	CreateColorEX("絵窓/絵薄黒", 700, "000000");

	SetShade("絵窓/絵背景", MEDIUM);

	Fade("絵窓/絵薄黒", 0, 300, null, true);

	OpenTateMask("絵窓",200, 1000,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
The cockatoo brought back a cube&.

Wait&, this looks familiar&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CloseTateMask("絵窓",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

//	Wait(500);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000360a01">
"Noiz&. It's him again&."

{	Fw("fwミンク_通常_normal");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000370a05">
"What bad manners&."

{	Fw("fw紅雀_通常_cranky2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000390a02">
"Again? Does he eavesdrop as a hobby?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/1000400a04">
"So this is what I heard at the door earlier&."

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000410a05">
"An aquaintance?"

{	Fw("fw蒼葉_通常_fake");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000420a01">
"I guess you sort of could call him that&."

{	Fw("fwミンク_通常_normal");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000430a05">
"The information gathering type&, huh&. Well&, it looks as
 if that's what this thing is for&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 500, -926, -100, "cg/bg/l/bg102021_5_平凡地下室_l.jpg");
	SetShade("絵背景", MEDIUM);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 200, 0, 10, 0, 0, 500, Axl3, false);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
Mink holds up my arm as high as his ears&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常_normal2");
	FadeSt("C",200,true);

//	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000440a05">
"Call him up here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000450a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000460a05">
"Use the same tone of voice you use at the shop&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000470a01">
"How would I call him!?"

{	St("C",740, @0,@0,"fuミンク_通常_pride");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/1000480a05">
"Any guy with a decent brain can take advantage of things&.
 A strategy to play cards is a good idea&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");
	DeleteSt("C", 0,true);
	FadeDelete("絵板写", 500, null, true);

	Fw("fw紅雀_通常_angry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000490a02">
"Hey&, what are you telling him?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
Koujaku turns his attention over here&, and Mink lets go of me&. 

Most likely&.&.&. Mink is talking about my voice&.

Even if you tell me that&.&.&.

The callers? Is it really okay to just use the  tone I use with customers&.&.&.?

I look at the cube the cockatoo retrieved&, and take a deep breath&.

Honestly&, both Mink and Noiz give me bad feelings that I 
can't really describe&.&.&.

But it's to save Granny&.
I have to do it&.

I'll speak how I usually do to customers&, but change my 
tone of voice a bit&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateMaskSetSPTate("絵窓", 3010);//ナット名、優先度
	CreateTextureSP("絵窓/絵背景", 100, Center, Middle, "cg/bg/m/bg102021_5_平凡地下室_m.jpg");
	CreateTextureSP("絵窓/絵立絵", 1000, Center, Middle, "cg/fu/x/fuAMウサギモドキ_通常_normal_x.png");
	CreateColorSP("絵窓/絵薄黒", 700, "000000");

	SetShade("絵窓/絵背景", MEDIUM);

	Fade("絵窓/絵薄黒", 0, 300, null, true);

	OpenTateMask("絵窓",200, 1000,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

//	Wait(300);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000500a01">
"&.&.&.&.Noiz&, you're there&, right? Are you listening?"

{
	Fw("fwm砂嵐_通常_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/1000510a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000520a01">
"Some stuff happened&, and it's serious&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000530a01">
"Honestly&, it might not be enough with only us&. So&.&.&. would you lend me a hand until it's over?" 

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000540a01">
"I'll do whatever you want&."

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/1000550a02">
"Aoba!?"

{	Fw("fw蒼葉_通常力行使_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/1000560a01">
"&.&.&.So please&. Please help me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CloseTateMask("絵窓",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(1000, true);

	Wait(1000);

//※次ファイル["dm0620.nss"]

}
