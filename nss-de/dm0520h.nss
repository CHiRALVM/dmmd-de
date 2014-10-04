//<continuation number="500">
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


scene dm0520h.nss_MAIN
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
	#ev052蒼葉モブ強姦=true;
	#ev052蒼葉モブ強姦a=true;
	#ev052蒼葉モブ強姦b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0530.nss";

	if($RECRIB_PLAY==1){//回想モード中
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB01=1;//回想用フラグ取得
}


scene dm0520h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg106011_5_廃ビル広間");
	FadeBG(0,true);

	SoundPlay("@dm006",0,450,true);

	$ftime=0;if($RECRIB_PLAY==1){$ftime=1000;}
	FadeDelete("上背景", $ftime, null, true);

	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,400,0,800,null,false);

	CreateSE("SE02","se人体_足音_歩く03");
	MusicStart("SE02",0,400,0,900,null,false);

	CreateSE("SE03","se人体_足音_歩く03");
	MusicStart("SE03",0,500,0,600,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
While in all sorts of pain everywhere in my body&, the 
sound of many footsteps reverberate on the room's floor&.

{
	SetVolumeEX("SE*", 2000, 0, null);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/l/bg106011_5_廃ビル広間_l.jpg");
	Move("絵背景100", 500, @50, @0, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);
}
A bunch of men holding machine guns come into the room&.

{
	FadeDelete("絵背景100", 500, null, true);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);
}

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/2000010a05">
"Do it&."

{
	DeleteAllSt(200,true);
}
The giant man jerks his chin in my direction&.

What&.&.&.? What are all these people going to do?

{
	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_足音_歩く03");
	MusicStart("SE02",0,600,0,900,null,false);

	CreateSE("SE03","se人体_足音_歩く03");
	MusicStart("SE03",0,700,0,600,null,false);
}
I watch one of the men come closer to me&, and I prepare 
myself for the worst&.

There's nothing I can do&.

{
	SetVolumeEX("SE*", 1500, 0, null);
}
They surround me as I sit there&, pitifully unable to 
escape&.

Ready for them to beat down on me at any moment&, I tense 
up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,700,0,1400,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Someone starts to pull on my jacket&.

{
	CreateSE("SE01","se人体_動作_衣擦れ24.ogg");
	MusicStart("SE01",0,700,0,1000,null,false);
}
And another pins down my legs and arms&.&.&.

&.&.&.&.&.?

What's going on?

When I look at their faces&, I see they have a bizarre look of excitement&.

Their breathing becomes erratic and their eyes are 
bloodshot&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【囚人Ａ】
<voice name="囚人Ａ" class="囚人Ａ" src="voice/dm05/2000020e19">
"Make sure to hold him down hard&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
&.&.&.I then understand what the look on their faces mean&. 
Stone cold shivers run down my spine with goosebumps 
joining them&.

Hey&, this has to be a joke&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000040a01">
"Let me go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ06");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 5, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
For a second I was able to loosen the grip&.
Little by little my restraints became weaker&.

Just a little more&.&.&.
Just a little&.&.&.
{
	CreateSE("SE01","se人体_動作_衣擦れ12");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 10, 0, 0, 0, 500, null, true);
	Delete("絵板写");
}

&.&.&.They're off!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景90", 90, -459, -573, "cg/bg/l/bg106011_5_廃ビル広間_l.jpg");
	Fade("絵背景90", 150, 1000, null, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 30, 0, 10, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000050a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
I finally freed my arms&, but immediately after&, someone 
pinned them down again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ100", 100, -1024, 0, "cg/ev/l/ev052蒼葉モブ強姦_l.jpg");
	Fade("絵ＥＶ100", 500, 1000, null, false);
	Move("絵ＥＶ100", 1000, -640, -262, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【囚人Ｂ】
<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000060e20">
"Hey&, what're you doin'? I told you to hold him down&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,30,null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000070a01">
"L-Let go!"

{
	CreatePlainSP("絵板写", 990);

	Fade("絵ＥＶ100", 0, 0, null, true);
	Fade("絵背景90", 0, 0, null, true);
	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);
}
I see another group of men come up&, as well as the giant 
man folding his arms while standing on the other side of 
the room&.

The giant man was watching me calmly&, as if this was only 
an attraction of sorts&.

{
	CreatePlainSP("絵板写", 990);

	Fade("絵ＥＶ100", 0, 1000, null, true);
	Fade("絵背景90", 0, 1000, null, true);
	DeleteAllSt(0,true);

	FadeDelete("絵板写", 500, null, true);
}

That bastard&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ100", 1200, -389, -242, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【囚人Ｃ】
<voice name="囚人Ｃ" class="囚人Ｃ" src="voice/dm05/2000080e21">
"Hehe&, don't hate us for this&."

//【囚人Ａ】
<voice name="囚人Ａ" class="囚人Ａ" src="voice/dm05/2000090e19">
"We can't go against Mink-san's orders&."

Mink&.&.&.?
Is that the man's name?

It was only for a second&, but the men surrounding me 
shuddered and their careless attitude had faded away&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000100a01">
"I said&, let me go! You're disgusting!"

//【囚人Ｂ】
<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000110e20">
"Shut the hell up!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	Delete("絵ＥＶ100");
	FadeDelete("絵フラッシュ白", 100, null, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 20, -10, 10, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000120a01">
"!"

I receive a blow to the side of my face&. I can feel 
the pain and the taste of blood in my mouth&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
}


//【囚人Ｃ】
<voice name="囚人Ｃ" class="囚人Ｃ" src="voice/dm05/2000130e21">
"Even if he's a guy&, I don't really give a shit&."

His rugged hand pulls off my shirt and starts feeling up 
my chest&.

//【囚人Ａ】
<voice name="囚人Ａ" class="囚人Ａ" src="voice/dm05/2000140e19">
"But this guy&, he has fair skin and long hair too&. Don't he look like a chick anyway?"

//【囚人Ｃ】
<voice name="囚人Ｃ" class="囚人Ｃ" src="voice/dm05/2000150e21">
"I guess&, but he's still a dude&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
&.&.&.That's right&, I'm a guy here! You're making me want to  throw up!

{
	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,500,0,1000,null,false);

	Move("絵背景90", 500, @0, @50, Dxl3, true);
}

I decide to mess with them; I collect all the blood in my  mouth and spit on one of the men closest to me&.

//【囚人Ｂ】
<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000160e20">
"-! You little shit!"

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,50,null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_shout");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000170a01">
"Get off! Don't touch me!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,700,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【囚人Ｂ】
<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000180e20">
"Ugh!"

I kick the distracted man in the stomach and he falls 
forward&, groaning in pain&.

Pathetic&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 100, null, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 10, -10, 0, 500, null, true);
	Shake("絵板写", 200, 20, 20, -10, 10, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000190a01">
"&.&.&.Erk&.&.&."

Someone punches me twice as hard as my kick&.

Shit&.&.&.

//【囚人Ａ】
<voice name="囚人Ａ" class="囚人Ａ" src="voice/dm05/2000200e19">
"Hurry up and pull him down&."

//【囚人Ｃ】
<voice name="囚人Ｃ" class="囚人Ｃ" src="voice/dm05/2000210e21">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ23");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ101", 101, 0, -445, "cg/ev/m/ev052蒼葉モブ強姦_m.jpg");
	Fade("絵ＥＶ101", 500, 1000, null, false);
	Move("絵ＥＶ101", 500, -150, -445, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000220a01">
"! Stop- Don't touch me!"

One of them violently undoes my belt and unbuttons my 
pants&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ102", 102, -150, -217, "cg/ev/m/ev052蒼葉モブ強姦a_m.jpg");
	Move("絵ＥＶ102", 500, -150, -137, Dxl1, false);
	Fade("絵ＥＶ102", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Another hand from the side pulls on my clothes&, and pulls 
up my shirt&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000230a01">
"&.&.&.Let go!"

//【囚人Ｂ】
<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000240e20">
"Shut up&. Gag him!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ103", 103, -150, -137, "cg/ev/m/ev052蒼葉モブ強姦b_m.jpg");
	FadeFR2("絵ＥＶ103", 0, 1000, 150, 0, 0, 30, null, true);

	Delete("絵ＥＶ101");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000250a01">
"Nfgh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("絵ＥＶ102");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
They stuff a ball of cloth into my mouth&, and the dryness  of it makes me feel nauseous&.

Even if I try to shout&, my voice won't come out&.

//【囚人Ｃ】
<voice name="囚人Ｃ" class="囚人Ｃ" src="voice/dm05/2000260e21">
"Ah&, holy shit&. I actually got hard&."

//【囚人Ａ】
<voice name="囚人Ａ" class="囚人Ａ" src="voice/dm05/2000270e19">
"Just do it already so I can have my turn&."

//【囚人Ｂ】
<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000280e20">
"I'm next!"

They disgustingly babble on as one of them pulls off my 
pants and underwear&.

{
	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,200,0,0,30,null, true);
	Delete("絵板写");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000290a01">
"Nmphghhhhh!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("絵ＥＶ102", 102, Center, Middle, "cg/ev/ev052蒼葉モブ強姦b.jpg");
	Fade("絵ＥＶ102", 0, 1000, null, true);

	Move("絵ＥＶ103", 600, 0, -345, Dxl3, false);
	FadeDelete("絵ＥＶ103", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
I shake my legs and try to resist&, but the entire lower 
half of my body ends up being exposed&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000300a01">
"&.&.&.!!!"

//【囚人Ａ】
<voice name="囚人Ａ" class="囚人Ａ" src="voice/dm05/2000310e19">
"Hey now&, he really is a guy&. Just looking at him makes me
 go limp&."

//【囚人Ｃ】
<voice name="囚人Ｃ" class="囚人Ｃ" src="voice/dm05/2000320e21">
"Not for me&."

//【囚人Ｂ】
<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000330e20">
"Serious? Anyway&, don't you do it from behind or some
 shit?"

//【囚人Ｃ】
<voice name="囚人Ｃ" class="囚人Ｃ" src="voice/dm05/2000340e21">
"Isn't it better to do a girl from behind too?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_心臓_鼓動01");

	CreateTextureEX("絵ＥＶ104", 104, -436, -262, "cg/ev/l/ev052蒼葉モブ強姦b_l.jpg");

	MusicStart("SE01",0,1500,0,1000,null,false);

	CreateColorSPadd("絵色白", 110, "FFFFFF");
	Delete("絵ＥＶ102");
	CreateMaskEX("絵覆", 0, Center, Middle, "cg/data/noize_01_00_0.png", false);
	CreateTextureSP("絵覆/絵ＥＶ120", 120, -521, -370, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
	Wait(10);
	Fade("絵色白", 50, 1000, null, true);

	Fade("絵ＥＶ104", 0, 1000, null, true);
	Fade("絵覆/絵ＥＶ120", 0, 0, null, true);
	Fade("絵色白", 100, 0, null, true);
	Delete("絵覆");

	CreateSE("SEL01","se人体_心臓_鼓動02L");
	MusicStart("SEL01",4000,700,0,600,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000350a01">
"Ugh&.&.&.!!"

Dry hands go across my thighs and my ass&, and then a 
finger presses into me&.

A feeling of absolute disgust courses through my entire 
body and nearly makes me go insane&. 

{
	SetFrequency("SEL01", 2000, 800, null);
}

More than feeling scared or angry&.&.&.
It just feels so disgusting&.&.&.!

Why did this have to happen&.&.&.&.<k>
I was just looking for Granny&, that's all&.&.&.
{
	SetFrequency("SEL01", 2000, 1000, null);
}


That giant man&.&.&.

This is all because of him&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetFrequency("SEL01", 2000, 1150, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
He's still looking at me right now&.

He's watching them do this to me&.&.&.
Does he think this is fun?
{
	SetFrequency("SEL01", 2000, 1300, null);
}

Why?<k> Why&.<k> Why&.

Why&.&.&.
{
	SetFrequency("SEL01", 2000, 1450, null);
}
Why does this have to happen&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE00","se人体_心臓_鼓動01");

	CreateColorEX("絵色黒", 5000, "000000");
	CreatePlainEX("絵板写", 4000);
	SetTone("絵板写", NegaPosi);
	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");

	SetVolumeEX("SEL01", 500, 0, null);
	MusicStart("SE00",0,1500,0,1000,null,false);
	SetVolumeEX("@dm*", 300, 0, null);

	Fade("絵色黒", 0, 1000, null, true);

	Wait(50);

	Fade("絵板写", 0, 1000, null, true);
	Delete("絵色黒");

	Wait(50);

	Fade("絵フラッシュ白", 0, 1000, null, true);
	Delete("絵色黒");
	Delete("絵板写");

	Wait(100);

	Lens_Set("レンズ１",1000,-135, -415, 1550, 1550);
	Lens_Start(15000);

	Delete("絵ＥＶ*");
	FadeDelete("絵フラッシュ白", 600, null,true);

	CreateSE("SEL01","se擬音_精神_超音波01L");
	MusicStart("SEL01",3000,300,0,600,null,true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【囚人Ａ】
<voice name="囚人Ａ" class="囚人Ａ" src="voice/dm05/2000370e19">
"Looks like he's suddenly calmed down&."

//【囚人Ｃ】
<voice name="囚人Ｃ" class="囚人Ｃ" src="voice/dm05/2000380e21">
"I guess he just gave up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【囚人Ｂ】
<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000390e20">
"Then go ahead already&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵色白", 100, 1000, null, true);
	Fade("絵色白", 50, 0, null, true);

//	SoundPlay("@dm006",0,450,true);
	SetVolumeEX("SEL01", 3000, 500, null);
//※↓加工：すごい小音量でセリフを流したい

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000400a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//↑「&.&.&.&.&.Get out of my sight&.

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【囚人Ａ】
<voice name="囚人Ａ" class="囚人Ａ" src="voice/dm05/2000410e19">
"Hey&, is he okay?"

//【囚人Ｂ】
<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000420e20">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【囚人Ｃ】
<voice name="囚人Ｃ" class="囚人Ｃ" src="voice/dm05/2000430e21">
"Hey&.&.&. Hey&, huh? What&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※加工：すごい小音量でセリフを流したい
	SetVolumeEX("SEL01", 10000, 1500, null);

	Fade("絵色白", 100, 1000, null, true);
	Fade("絵色白", 50, 0, null, true);
	Wait(10);
	Fade("絵色白", 50, 1000, null, true);
	Fade("絵色白", 100, 0, null, true);

//	Fw("fw蒼葉_通常力行使_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/2000440a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//↑「…………消えろ、全員消えろ、消えろ、消えろ、消えろ」

//	CreateSE("SE01","se擬音_効果_力蒼葉01");
//	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【囚人Ｂ】
<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000460e20">
"Wh-What? Somehow&.&.&."

//【囚人Ａ】
<voice name="囚人Ａ" class="囚人Ａ" src="voice/dm05/2000450e19">
"Ahhhh&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);
	CreateColorSP("絵色黒", 5000, "000000");
	Delete("レンズ１");

	Wait(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0154]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm05/2000470b01">
"Disappear&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE01","se擬音_効果_力蒼葉01");
//	MusicStart("SE01",0,700,0,1000,null,false);

//	Fade("絵色白", 100, 1000, null, true);
//	Fade("絵色白", 50, 0, null, true);
//	Wait(10);
//	Fade("絵色白", 50, 1000, null, true);
//	Fade("絵色白", 100, 0, null, true);

//	Wait(1000);

//※演出：暗転
	//CreateColorEX("絵色黒", 5000, "000000");
	//Fade("絵色黒", 300, 1000, null, true);

//▽深堀：台本のため下の台詞を分割しました。
//「う……、うわあぁぁぁぁぁぁっっっ！！！」

//※三人同時→後で音声データ来たらボイスタグ差し替え
//【囚人Ａ】
//<voice name="囚人Ａ" class="囚人Ａ" src="voice/dm05/2000480e19">
//「う……、うわあぁぁぁぁぁぁっっっ！！！」

//【囚人Ｂ】
//<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000490e20">
//「う……、うわあぁぁぁぁぁぁっっっ！！！」

//【囚人Ｃ】
//<voice name="囚人Ｃ" class="囚人Ｃ" src="voice/dm05/2000500e21">
//「う……、うわあぁぁぁぁぁぁっっっ！！！」

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
<voice name="その他" class="その他" src="voice/dm05/2000480e19">
"Ugh&.&.&.&. Uwaaaaaaaagh!!!"

//<voice name="囚人Ｂ" class="囚人Ｂ" src="voice/dm05/2000490e20">
//<voice name="囚人Ｃ" class="囚人Ｃ" src="voice/dm05/2000500e21">
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
*/

//※演出：場面転換

	SetVolumeEX("@dm*", 3000, 0, null);

//※次ファイル["dm0530.nss"]


	ClearFadeAll(1000, true);

	if($RECRIB_PLAY==1){Wait(2000);}

}
