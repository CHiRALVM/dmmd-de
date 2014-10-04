//<continuation number="440">
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


scene dm0290.nss_MAIN
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

	#dm0290_Add1=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0300.nss";

}


scene dm0290.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm001",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The morning passes with no incidents in particular&, and 
after finishing lunch break&, the afternoon shift starts&.

Since Haga-san went out&, I'm the only one in the shop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000010a01">
"Yes&.&.&. Yes&. Well then&, we look forward to hearing from you again&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
After finishing an incoming call from a customer&, I take a breather&.

Since he reacted to my voice with the usual pattern&, I was able to sell just as many things&.

It seemed like he was one of those who had called before&, 
and he was reluctant to hang up the phone&, so it was a 
little troublesome&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
While I feel disgusted by the excited voice that still 
lingers in my ears&, the doorbell rings&.

Oh&, a customer?

I take my elbow off the counter and straighten myself up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm003",0,450,true);

	St("L",730, @0,@0,"stキオ_通常_normal");
	FadeSt("L",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm02/9000020b10">
"Hiya&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stナオ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm02/9000030b13">
"Aoba&, we came to plaaaaaay&."

{	St("R",730, @0,@0,"stミオ_通常_normal");
	FadeSt("R",200,true);}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm02/9000040b11">
"Hmph&."

{
	Fw("fw蒼葉_通常_sigh");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000050a01">
"&.&.&.It's you guys&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I thought it was a customer&, but the only ones that come inare the evil brat siblings&.

I let out an exaggerated sigh&, rest my elbow on the counteragain and give the kids a sharp glare&.

Whenever they come in&, it always spells bad news&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000060a01">
"You just came to do stupid stuff again&. Go home already&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("L",730, @0,@0,"stキオ_通常_shout");
	FadeSt("L",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm02/9000070b10">
"Aoba&, you're annoying&."

{	St("C",740, @0,@0,"stナオ_通常_shout");
	FadeSt("C",200,true);}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm02/9000080b13">
"Annnoyiiiiing&."

{	St("R",730, @0,@0,"stミオ_通常_shout");
	FadeSt("R",200,true);}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm02/9000090b11">
"You just stay quiet now&, all right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000100a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Those brats&.&.&.

The brats find Bonjin-kun and immediately start chasing 
him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("R",730, @0,@0,"stミオ_通常_shock");
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 200, 0, 8, 0, 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm02/9000110b11">
"Ah&, there it is!"

{
	St("C",740, @0,@0,"stナオ_通常_normal");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 0, 8, 0, 0, 500, null, true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm02/9000120b13">
"Wait up&, wait uuup!"

{
	St("L",730, @0,@0,"stキオ_通常_normal");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 200, 0, 8, 0, 0, 500, null, true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm02/9000130b10">
"Catch it!"

{
	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameL/L*", 180, @-80, @0, Axl1, false);
	Move("@StNameC/C*", 180, @0, @80, Axl1, false);
	Move("@StNameR/R*", 180, @80, @0, Axl1, false);
	DeleteAllSt(180,true);

	St("C",730, @0,@0,"stAM凡人くん_通常_normal");
	FadeSt("C",180,true);
	Shake("@StNameC/C*", 200, 0, 15, 0, 0, 500, null, true);
}
//【凡人くん】
<voice name="凡人くん" class="凡人くん" src="voice/dm02/9000140e59">
"C-Cleaning!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se動物_足音_歩く凡人01L");
	MusicStart("SE02",0,700,0,1000,null,false);
	DeleteSt("C", 200,true);

	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The confused Bonjin-kun quickly moves to escape&.

Bonjin-kun is quite clever for an Allmate&, so he can move 
unexpectedly fast and his evasion ability is also high&.

It's not so easy to catch him&. But that's probably what 
keeps the brats chasing after him&, anyway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000150a01">
"Hey&, hey&, hey&, hey&, don't run!"

{
	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@80,"stナオ_通常_shout");
	Move("@StNameC/C*", 200, @0, @-80, Dxl1, false);
	FadeSt("C",200,true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm02/9000160b13">
"Ah&, come on-!"

{
	St("L",730, @-80,@0,"stキオ_通常_shock");
	Move("@StNameL/L*", 200, @80, @0, Dxl1, false);
	FadeSt("L",200,true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm02/9000170b10">
"Wait!"

{
	St("R",730, @80,@0,"stミオ_通常_shout");
	Move("@StNameR/R*", 200, @-80, @0, Dxl1, false);
	FadeSt("R",200,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm02/9000180b11">
"Catch it already!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stナオ_通常_angry");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 0, 12, 0, 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm02/9000190b13">
"Come oooooooooooooooon!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	Wait(500);

	CreateSE("SE02","se動物_足音_歩く凡人01L");
	MusicStart("SE02",0,700,0,1000,null,false);

	St("C",730, @100,@0,"stAM凡人くん_通常_normal");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 500, @-200, @0, Dxl1, false);
	DeleteAllSt(500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【凡人くん】
<voice name="凡人くん" class="凡人くん" src="voice/dm02/9000200e59">
"C-Cleaning! Cleaninining!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE03","se物体_物_漁る01");
	MusicStart("SE03",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
Ah&, the shelf is wobbling now&.&.&.

{
	SetVolumeEX("SE*", 2000, 0, null);
}
That cardboard looks like it's about to fall&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000210a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
It should be fine to just stop this by force&.

&.&.&.I thought I could&, but I'm one step too late&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※どすーんと物が落ちてくる音
//※ぱりぱりーんと陶器が割れるような音

	CreatePlainSP("絵板写", 5000);
	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵板写", 500, 0, 10, 0, 0, 500, Dxl1, false);
	FadeDelete("絵板写", 500, Dxl1, true);

	CreateSE("SE02","se物体_ガラス_割れる02");
	CreateSE("SE03","se物体_ガラス_割れる03");
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000220a01">
"Aaahhhh!!"

{	Fw("fwミオ_通常_shock");}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm02/9000230b11">
"No waaaay! Something broooooke!"

{	Fw("fwナオ_通常_fear");}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm02/9000240b13">
"It broke!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE04","se人体_動作_衣擦れ01");
	MusicStart("SE04",0,700,0,1000,null,false);

	CreateSE("SE05","se物体_椅子_引く01");
	MusicStart("SE05",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000250a01">
"Don't you 'it broke!' me!"

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000260a01">
"You brats!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("L",730, @0,@0,"stキオ_通常_shock");
	FadeSt("L",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm02/9000270b10">
"Waaah! Aoba got angry!"

{
	St("C",740, @0,@0,"stナオ_通常_angry");
	FadeSt("C",200,true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm02/9000280b13">
"Angryyy!!"

{
	St("R",730, @0,@0,"stミオ_通常_normal");
	FadeSt("R",200,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm02/9000290b11">
"I hate quick-tempered men!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameL/L*", 180, @-80, @0, Axl1, false);
	Move("@StNameC/C*", 180, @0, @80, Axl1, false);
	Move("@StNameR/R*", 180, @80, @0, Axl1, false);
	DeleteAllSt(200,true);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000300a01">
"Shut up! &.&.&.You! Hey! You too!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE03","se人体_動作_衣擦れ17");
	MusicStart("SE03",0,700,0,800,null,false);

	Wait(500);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1200,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
I catch the trio by their necks&, drag them to the door&, 
and throw them out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE04","se物体_ドア平凡_鳴る01");
	MusicStart("SE04",0,700,0,1000,null,false);

	OnBG(10,"bg102031_1_平凡前通り");
	FadeBG(500,true);

	Fade("絵色黒", 400, 0, Dxl1, true);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);

	Fw("fwキオ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm02/9000310b10">
"Uwah!"

{
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,800,null,false);
	Wait(300);
	Fw("fwナオ_通常_angry");
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm02/9000320b13">
"Ouch!"

{
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1200,null,false);
	Wait(300);
	Fw("fwミオ_通常_shout2");
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm02/9000330b11">
"How cruel! You're awful!"

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000340a01">
"Shut up&, shut uuuup! When you make an adult angry&, it can
 get scaaaary&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
I put my hands on my hips and make an "intimidating 
teacher" pose while glaring at the brats&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000350a01">
"Geez&, you're always causing trouble&. Try reflecting a
 little&. And go home already&."

{	St("L",730, @0,@0,"stキオ_通常_shout");
	FadeSt("L",200,true);}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm02/9000360b10">
"So annoying! Shut up&, stupid!"

{	St("C",740, @0,@0,"stナオ_通常_shout");
	FadeSt("C",200,true);}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm02/9000370b13">
"Stupid Aoba!"

{	St("R",730, @0,@0,"stミオ_通常_shout");
	FadeSt("R",200,true);}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm02/9000380b11">
"You're so lame&, you old geezer!"

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000390a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000400a01">
"&.&.&.You little&.&.&."

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/9000410a01">
"&.&.&.Just listen to me alreadyyyyy!!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("L",730, @0,@0,"stキオ_通常_shock");
	St("C",740, @0,@0,"stナオ_通常_angry");
	St("R",730, @0,@0,"stミオ_通常_shock");
	FadeAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【蒼葉】
//※同時
//【キオ】
//<voice name="その他" class="その他" src="voice/dm02/9000420ex">
"Waaaaaaaaaaah!!!"{WaitAddText2();}
<BR>

//※同時
//【ナオ】
//<voice name="ナオ" class="ナオ" src="voice/dm02/9000430b13">
//「わーーーーー！！！」

//※同時
//【ミオ】
//<voice name="ミオ" class="ミオ" src="voice/dm02/9000440b11">
//「わーーーーー！！！」

</PRE>
	SetText();
	AddText(1,""Waaaaaaaaaaah!!!"","キオ","dm02/9000420b10",false,true,1000);
	AddText(2,""Waaaaaaaaaaah!!!"","ナオ","dm02/9000430b13",false,true,1000);
	AddText(3,""Waaaaaaaaaaah!!!"","ミオ","dm02/9000440b11",false,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(200);

//ガキども逃げていく（コンクリート）
	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
The instant I finally snap and yell at them&, the brats makea break for it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0300.nss"]

}
