//<continuation number="150">
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


scene dm3640scr.nss_MAIN
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
	#ev364ミンク捕縛=true;
	#ev364ミンク捕縛a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3650.nss";

}


scene dm3640scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg204031_0_暴露ミンク倉庫個室");
	FadeBG(0,true);

	CreatePlainEXsub("絵演", 20);
	Zoom("絵演", 0, 1010, 1010, null, true);
	Move("絵演", 0, @0, 10, null, true);
	Fade("絵演", 0, 1000, null, true);

	Delete("上背景");
	FadeDelete("絵色黒", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Beyond the door was a small&, square room&.

It's as rusty as the warehouse before&, but there's a large mass of a person in the middle of the room&.

When I look closer&, I see thick and sturdy chains are 
tightly wound around him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵演", 3000, DxlAuto, false);
	Zoom("絵演", 3000, 2000, 2000, DxlAuto, false);
	Zoom("@OnBG*", 3000, 2000, 2000, DxlAuto, false);

	CreateColorSP("絵色黒", 5000, "000000");
	DrawTransition("絵色黒", 2000, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
In the darkness&, something peeks through a gap in the pile of chains&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DrawTransition("絵色黒", 2000, 500, 750, 100, null, "cg/data/slide_05_00_0.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Their narrowed eyes&, staring&.&.&. the sight of them takes 
my breath away for a short moment&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ", 1100, Center, Middle, "cg/ev/l/ev364ミンク捕縛_l.jpg");
	Request("絵ＥＶ", Smoothing);
	Fade("絵ＥＶ", 1000, 1000, null, true);

	CreateProcessEX("プロセス", "Proc_dm3640scr_01Act");
	Request("プロセス", Start);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000010a01">
"Mink&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	SoundPlay("@dm017",0,450,true);//暴露

	Request("プロセス", Stop);

	if($Proc_dm3640scr_01Act==true){
	}else{
	CreatePlainSP("絵板写", 10000);
	Zoom("@絵ＥＶ", 0, 500, 500, null, false);
	Delete("絵色黒");
	FadeDelete("絵板写", 500, null, true);
	}
	$Proc_dm3640scr_01Act=false;
	Delete("プロセス");
	Delete("絵色黒");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
Sitting on an iron chair&.&.&. Or rather&, confined to it&.

His face is lowered so I can't see it&, and he doesn't move at all&.

At any rate&, I have to get these chains off of him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：ばちんと火花が散る
	CreateSE("SE01","se擬音_効果_火花01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	BGPlainShake(3990,200,0,20,0,0,1000,null,false);
	FadeDelete("絵色白", 70, null, true);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000020a01">
"!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
The moment my fingers touch the iron chains&, a numbing 
spark runs through me&. I reflexively pull back my hand&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000030a01">
"Fuck-!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
One more time&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：ばちんと火花が散る
	CreateSE("SE01","se擬音_効果_火花01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	BGPlainShake(3990,200,0,20,0,0,1000,null,false);
	FadeDelete("絵色白", 70, null, true);

{	Fw("fw蒼葉_通常_pinch");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000040a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
I really can't do anything&.
It repels me each time I try to touch it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I can't help Mink like this&.
What do I&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
At that moment&, a thought floated into my head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//SetVolumeEX("@dm*", 150, 1, null);
	SetVolumeEX("@dm017", 150, 1, null);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 100, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
&.&.&.It's rejecting me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm017", 2000, 450, null);

	FadeDelete("絵色黒", 500, null, true);

	CreateTextureEX("絵演専", 1120, -340, 0, "cg/ev/l/ev364ミンク捕縛_l.jpg");
	Move("絵演専", 8000, @0, -288, DxlAuto, false);
	Fade("絵演専", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
This is inside of Mink's head&. Everything is controlled by him and him alone&.

This Mink bound from head to toe is the "true" Mink&.

I didn't understand it when I first touched the chains&, 
but someway or another it was the "true" him telling me 
something&.

Mink&.&.&. is bound to the idea that he "can't move"&.

So that's why it's like this&.

First I have to "destroy" that notion&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵演専", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I once again extend my hand out to Mink&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常力行使_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000060a01">
"Mink&.&.&. You can move&. So hurry up and get out of here&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_鎖_砕ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
When I called out to him&, a chain broke apart with a 
crunch&.

I reach for an even larger chain&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※鎖に指が触れると、今度はシュウウウと煙が上がり、メキメキと指先から錆びていく。
	CreateSE("SE01","se擬音_精神_煙る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	Fade("絵色白", 70, 0, null, true);
	Wait(30);
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000070a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
When my fingers reach it&, a flame blows up&. Astonished&, I 
pull back&.

{
	CreateSE("SE01","se擬音_精神_錆びる01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
&.&.&.The fingers that touched the chain have changed into a 
dark reddish-brown color&.

And in a flash&, it erodes from my hand up to my arm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
It's exactly like&.&.&. the rust covering this room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「演出：合う表情も無いのでＳＥ扱いに」

/*
	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000080a01">
"Ahhhhh&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	CreateVOICE("蒼葉","dm36/4000080a01");
	MusicStart("蒼葉",0,1500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Terrified&, I shake my hand and scream&.

The colored area burns like fire&. But it's still cold&.

And I'm already this far&.&.&.

You're going to refuse me even though I've gotten this 
far&.&.&.!?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("蒼葉", 150, 0, null);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000090a01">
"&.&.&.Shit&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Enduring it&, I completely stretch out my hand for Mink&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※鎖に指が触れると、今度はシュウウウと煙が上がり、メキメキと指先から錆びていく。
	CreateSE("SE01","se擬音_精神_煙る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	Fade("絵色白", 70, 0, null, true);
	Wait(30);
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	CreatePlainSP("絵板写", 1190);
	SetBlur("絵板写", true, 3, 500, 60, false);

	CreateSE("SE02","se物体_鎖_伸びる01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateMovieSP("絵演動画", 1990, Center, Middle, false, true, "dx/mv鎖覆う.ngs");
	FadeFFR3("絵板写", 0,900, 2000, 0, 0, 30,null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Smoke rises from that arm as well&, rusting away&. The 
chains from the chair rise up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se物体_金属_衝突01");
	MusicStart("SE02",0,700,0,500,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
The chains coil around Mink and then around my rusting 
arms&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※陶器が粉々に割れるような、ガラスよりはちょっと重い音
	CreateSE("SE01","se物体_鎖_砕ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	BGPlainShake(3990,200,0,20,0,0,1000,null,false);
	FadeDelete("絵色白", 70, null, true);

{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000100a01">
"!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
Both of my arms are&.&.&.
Shattering apart like glass&.

Soon a pain so forceful that it could have knocked me 
out hit me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：合う表情も無いのでＳＥ扱いに」

/*
	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0066]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000110a01">
"Hiyahhhh&.&.&. Ugah&.&.&. Ahh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	CreateVOICE("蒼葉","dm36/4000110a01");
	MusicStart("蒼葉",0,1500,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);

	CreateTextureEX("絵演背景朧", 20, Center, Middle, "cg/bg/l/bg204031_0_暴露ミンク倉庫個室_l.jpg");
	Zoom("絵演背景朧", 0, 500, 500, null, true);
	SetShade("絵演背景朧", SEMIHEAVY);

	CreateTextureSP("絵演背景", 15, Center, Middle, "cg/bg/l/bg204031_0_暴露ミンク倉庫個室_l.jpg");
	Zoom("絵演背景", 0, 500, 500, null, true);

	CreateSurfaceEX("絵効果サフ", 100,2000,"@絵演背景");
	Fade("絵効果サフ", 0, 1000, null, true);
	SetSurface("絵演背景朧","絵効果サフ");
	Move("絵効果サフ", 0, @0, -140, null, true);

	MoveFFP1stop();
	MoveFFP2stop();

	MoveFFP1("@絵演背景朧",20000);
	MoveFFP2("@絵演背景",25000);

	CreateProcessEX("プロセス", "Proc_dm3640scr_02Act");
	Request("プロセス", Start);

	Move("絵効果サフ", 1300, @0, -200, DxlAuto, false);
	Fade("絵演動画", 0, 0, null, false);
	Fade("絵ＥＶ", 0, 0, null, true);

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
It hurts&.

Cold sweats running down my forehead&, my vision goes 
blurry&. My knees drop down to the floor&.

This kind of pain shouldn't be possible&.&.&.this shouldn't&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("蒼葉", 150, 0, null);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000120a01">
"&.&.&.Fu&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
Mink sits there silently without moving an inch&.

Why&.&.&.
Why do you reject me&.&.&.

&.&.&.No&.

I'm not going to give up here&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
No matter how much you refuse me&.&.&.
I won't let you be destroyed!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000130a01">
"Urk&.&.&. Ugrahhhh&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,1200,0,1000,null,false);
	Move("絵効果サフ", 2000, @0, 0, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
I somehow hold my armless self up and stand&.

Once more&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Request("プロセス", Stop);
	MoveFFP1stop();
	MoveFFP2stop();

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵ＥＶ", 1110, -330, -288, "cg/ev/l/ev364ミンク捕縛_l.jpg");
	Zoom("絵ＥＶ", 0, 500, 500, null, true);

	Fade("絵演動画", 0, 1000, null, true);
	Delete("絵効果サフ");
	Delete("絵演背景*");
	Delete("プロセス");

	Zoom("絵ＥＶ", 1000, 1000, 1000, Dxl1, false);
	Zoom("絵演動画", 1000, 1250, 1250, Dxl1, false);

	Zoom("絵板写", 1000, 2000, 2000, null, false);
	FadeDelete("絵板写", 1000, null, true);

	CreateSE("SE01","se物体_鎖_伸びる02");
	MusicStart("SE01",0,700,0,500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
I get closer to Mink and bite at the rusting chains&.

{
	CreateSE("SE02","se物体_鎖_伸びる02");
	MusicStart("SE02",0,700,0,1000,null,false);
}
I pull on them with my mouth&, trying to tear them off of 
him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000140a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se物体_鎖_伸びる01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 1190);
	SetBlur("絵板写", true, 3, 500, 60, false);

	CreateMovieSP("絵演動画二", 1990, Center, Middle, false, true, "dx/mv鎖覆う.ngs");
	Rotate("絵演動画二", 0, @0, 180, @0, null,true);
	Zoom("絵演動画二", 2000, 1050, 1050, null, false);
	FadeFFR3("絵板写", 0,900, 2000, 0, 0, 30,null, false);
	FadeFFR2("絵演動画", 0,900, 2000, 0, 0, 30,null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
More chains aim at me from behind Mink's chair&.

Is it hopeless already&.&.&.?

&.&.&.Mink!!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：鎖にばちばちっと火花が散る
	CreateSE("SE01","se擬音_効果_火花01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	BGPlainShake(3990,200,0,20,0,0,1000,null,false);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
At that moment&, Mink's face moved up a bit&.

And then-

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Position("絵ＥＶ", $x1, $y1);
	CreateTextureEX("絵ＥＶ２", 1110, $x1, $y1, "cg/ev/l/ev364ミンク捕縛a_l.jpg");
	Fade("絵ＥＶ２", 1000, 1000, null, true);
	Delete("絵ＥＶ");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
Mink's closed eyes were looking right at me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ばちんと強い光が走り、ミンクの世界から弾き出される
	CreateSE("SE01","se擬音_効果_火花02");
	MusicStart("SE01",0,1200,0,1000,null,false);

	SetVolumeEX("@dm*", 150, 0, null);

	PrintGO("上背景", 20000);
	CreateColorSP("絵色黒", 10, "000000");
	CreateColorSP("絵色白", 4000, "FFFFFF");
	FadeDelete("上背景", 0, null, true);
	Wait(30);
	Fade("絵色白", 70, 0, null, true);
	Wait(10);
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/4000150a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：未作業：元の世界に戻る繋ぎ(2/5)」
//あきゅん「演出：ここで精神世界からの脱出演出入れますが、とりあえず仮入れで」
	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 3000, 1000, Axl2, true);
	Wait(1000);

//※次ファイル["dm3650.nss"]

}


/*
	CreateMovieSP("絵演動画", 1900, 0, 0, true, true, "dx/mv鎖覆う.ngs");
	Fade("絵演動画", 0, 800, null, true);

	//CreateTextureSP("絵専", 1000, Center, Middle, "cg/ev/ev364ミンク捕縛.jpg");
	CreateColorSP("絵色黒", 10, "FFFFFF");

	WaitKey();

	while(1)
	{

	Request("絵演動画", Pause);

	WaitKey();

	Request("絵演動画", Resume);
	Wait(32);

	}

	WaitKey();
*/
