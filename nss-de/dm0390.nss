//<continuation number="450">
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


scene dm0390.nss_MAIN
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

	#dm0390_Add1=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0400.nss";

}


scene dm0390.nss
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
The next day comes&.

Because I was so tired from yesterday&, I arrived at 
Heibon just barely in time&. 

Haga-san went out as soon as he opened the shop&, so I'm 
taking care of the shop alone&.

Only Bonjin-kun and I are in the shop&. Since hardly any 
customers have come&, I have lots of free time&. 

I spend the time thinking about yesterday's events&.

Noiz and Clear&. 
A tresspasser and a weird guy in a gas mask&.

I don't understand either of them&.&.&.

But when everyone went home and the noisiness vanished 
from the house&, I actually might have felt a little lonely&.

{
	CreateSE("SE01","se物体_電話_鳴る平凡01L");
	MusicStart("SE01",0,700,0,1000,null,true);
}
It's a bit like thinking it's nice to have something 
lively happen once in a while&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_電話_取る平凡01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/9000010a01">
"Yes&, this is Junk Shop Heibon&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//※加工：アナログ電話
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm03/9000020a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/9000030a01">
"Hello?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//※加工：アナログ電話
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm03/9000040a05">
"&.&.&.&.&."

{
	CreateSE("SE01","se物体_電話_切れる平凡");
	MusicStart("SE01",0,700,0,1000,null,false);
}
He hangs up without saying anything&.

What?
A prank?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(200);

	CreateSE("SE02","se人体_足音_走り去る子供01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(200);

	SoundPlay("@dm003",0,450,true);

	St("L",730, @-100,@0,"stキオ_通常_shout");
	Move("@L*", 200, @100, @0, Dxl1, false);
	FadeSt("L",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm03/9000050b10">
"Suicide attaaaack!"

{
	St("C",740, @-100,@0,"stナオ_通常_shout");
	Move("@C*", 200, @100, @0, Dxl1, false);
	FadeSt("C",200,true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm03/9000060b13">
"It's a suicide attaaaack!"

{
	St("R",730, @-100,@0,"stミオ_通常_shout");
	Move("@R*", 200, @100, @0, Dxl1, false);
	FadeSt("R",200,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000070b11">
"This place is as lame as always!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The door opens and loud voices echo through the room&.

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/9000080a01">
"You brats again!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("L",730, @0,@0,"stキオ_通常_normal");
	FadeSt("L",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm03/9000090b10">
"Ah&, it's Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stナオ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm03/9000100b13">
"Aobaaa!"

{
	St("R",730, @0,@0,"stミオ_通常_normal");
	FadeSt("R",200,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000110b11">
"Looking boring as usual!"

Sheeesh&, they're always&, always so uncute&.&.&.

{
	St("L",730, @0,@0,"stキオ_通常_shout");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 150, 0, 5, 0, 0, 500, null, true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm03/9000120b10">
"Oh! Target found!"

{
	St("C",740, @0,@0,"stナオ_通常_shout");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 150, 0, 5, 0, 0, 500, null, true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm03/9000130b13">
"Found!"

{
	DeleteAllSt(180,true);

	St("C",740, @0,@0,"stAM凡人くん_通常_normal");
	FadeSt("C",180,true);
}
The evil brats' interest moves from me to Bonjin-kun&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("@StNameC/C*", 1000, @50, @0, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【凡人くん】
<voice name="凡人くん" class="凡人くん" src="voice/dm03/9000140e59">
"C-Cleeeeeeeeaning!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se動物_足音_歩く凡人01L");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("@StNameC/C*", 500, @100, @0, Dxl1, false);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Bonjin-kun stops by hitting the brakes to hide behind me&.

{
	SetVolumeEX("SE*", 1000, 0, null);
}
Wait&, wait&.

Doesn't that mean I'll be their new target?

{
	St("L",730, @-50,@0,"stキオ_通常_shout");
	Move("@L*", 200, @50, @0, Dxl1, false);
	FadeSt("L",200,true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm03/9000150b10">
"Waiiit!"

{
	St("C",740, @0,@50,"stナオ_通常_shout");
	Move("@C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm03/9000160b13">
"Wait&, waiiit!"

{
	St("R",730, @50,@0,"stミオ_通常_shout2");
	Move("@R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000170b11">
"Stay put!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 10, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/9000180a01">
"Ugh&, kids&, don't hang from me!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
As I struggle with the noisy brats&, I hear the door open 
again&.

I think it's a customer&, but&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);

	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/9000190a01">
"&.&.&.Noiz!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/9000200a03">
"Yo&."

Wh&.&.&. Why did he come to the shop!?

{
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,900,null,false);
}
Noiz approaches me while curiously looking over the shop&.

{
	SetVolumeEX("SE*", 2000, 0, null);
}
The evil brats let go of me and keep their eyes trained 
on Noiz&.

{
	St("R",730, @0,@0,"stミオ_通常_shock");
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 150, 0, 15, 0, 0, 500, null, true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000210b11">
"Hey&, hey! Isn't it weird to have a customer?"

{
	St("C",740, @0,@0,"stナオ_通常_normal");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 150, 0, 15, 0, 0, 500, null, true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm03/9000220b13">
"Customer! A customer came!"

{
	St("L",730, @0,@0,"stキオ_通常_normal");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 150, 0, 15, 0, 0, 500, null, true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm03/9000230b10">
"Right&, change of target! Let's charge towards the
 customer!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/9000240a01">
"H-Hey&, you kids&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Before I can stop them&, the brats dash towards Noiz&.

Crap&, he's going to get angry&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	St("MR",700, @50,@0,"stナオ_通常_shout");
	St("ML",720, @-50,@0,"stキオ_通常_shout");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,false);
	FadeSt("ML",200,true);

	DeleteAllSt(200,true);

//※ＳＥ：ずでっと２人が立て続けにコケる
//▽ムー：台本のため分割しました。
//「うわぁっ！」

//	Fw("fwキオ_通常_normal");
//	Fw("fwナオ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//※同時
//【キオ】
//<voice name="キオ" class="キオ" src="voice/dm03/9000250b10">
"Uwhoa!"{WaitAddText2();}
<BR>

//※同時
//【ナオ】
//<voice name="ナオ" class="ナオ" src="voice/dm03/9000260b13">
//「うわぁっ！」

</PRE>
	SetText();
	AddText(1,""Uwhoa!"","キオ","dm03/9000250b10",true,true,1000);
	AddText(2,""Uwhoa!"","ナオ","dm03/9000260b13",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(100);

	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,700,0,1400,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
I thought he would get angry&, but instead he avoids them 
easily&. The advancing Kio and Nao fall forward&.

And then&, Mio&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,700,0,1400,null,false);

	Fw("fwミオ_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000270b11">
"H-Hey! Let me go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Just before she bumps into him&, Noiz catches her and 
lifts her up like a kitten&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_叩く01");
	MusicStart("SE02",0,700,0,1400,null,false);

	Fw("fwミオ_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000280b11">
"Let me go! What're you doing!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSP("絵マスク上", 110, 0, 0, "ciライン_00_00", true, "ciライン_00_00z");

	CreateTextureSP("絵マスク上/絵背景", 100, Center, Middle, "cg/bg/l/bg102011_5_平凡店内_l.jpg");

	CreateTextureSP("絵マスク上/絵立絵", 100, 256, -170, "cg/fu/fuノイズ_通常_normal.png");

	DrawDelete("絵板写", 100, 100, null, "slide_05_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
Mio pounds on Noiz's chest desperately&.
Without budging&, Noiz silently continues to watch Mio&. 

It's kind of a surreal scene&.&.&.

{
	CreatePlainSP("絵板写", 5000);
	Delete("絵マスク*");
	DrawDelete("絵板写", 100, 100, null, "slide_05_00_1", true);
}
As I watch&, dumbfounded&, Noiz does something completely 
unexpected&.

{
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(1200);
	CreateSE("SE02","se人体_動作_キス01");
	MusicStart("SE02",0,600,0,1000,null,false);
	Wait(1000);
}
Wow&.&.&.

He takes Mio's struggling hand&, brings his lips close to 
it&, and kisses it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/9000290a01">
"Wha&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
What the hell&.&.&.!?

But Mio's still even more surprised than me&.
Well&, who wouldn't be&.&.&.

Mio trembles madly&, her face red like a boiled octopus&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミオ_通常_shy");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000300b11">
"Wha&, wha&, wha-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/9000310a03">
"Violent girls aren't cute&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
Noiz says something absolutely absurd&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミオ_通常_shy");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000320b11">
"Le&, le&, le&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
Mio opens and closes her mouth like a goldfish&, then 
closes her eyes and takes a deep breath&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミオ_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000330b11">
"Let me go! You sexual harassment piercing guy!"

{
	Fw("fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/9000340a01">
"Sexual harassment piercing guy&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
Noiz doesn't really react and just puts Mio on the floor&.

Mio jumps back from Noiz immediately&, and after 
retreating a safe distance shoves an index finger 
in his direction&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("L",730, @50,@0,"stミオ_通常_shout2");
	Move("@L*", 200, @-50, @0, Dxl1, false);
	FadeSt("L",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000350b11">
"You have so many holes in your face&, what're you going to
 do if blood comes out!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,600,0,1400,null,false);

	St("ML",720, @0,@50,"stキオ_通常_shock");
	Move("@ML*", 180, @0, @-50, Dxl1, false);
	FadeSt("ML",180,true);
	Shake("@StNameML/ML*", 150, 0, 10, 0, 0, 500, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm03/9000360b10">
"What!? Blood!?"

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,600,0,1000,null,false);

	St("MR",720, @0,@50,"stナオ_通常_fear");
	Move("@MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 150, 0, 10, 0, 0, 500, null, true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm03/9000370b13">
"Blood!?"

{
	DeleteAllSt(200,true);
}
Kio and Nao&, who had been acting injured after falling 
forward&, stand up when they hear their sister's words&.

Fortunately&, the older brothers hadn't seen Noiz's 
performance&. That's a relief&.&.&.

{
	St("ML",720, @0,@0,"stキオ_通常_shout");
	FadeSt("ML",200,true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm03/9000380b10">
"What'd you do to Mio!?"

{
	St("MR",720, @0,@0,"stナオ_通常_shout");
	FadeSt("MR",200,true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm03/9000390b13">
"What'd you dooooo!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/9000400a03">
"Nothing much&."

{
	DeleteAllSt(180,true);

	St("L",740, @0,@0,"stミオ_通常_shy");
	FadeSt("L",180,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000410b11">
"Stop it&, you two!"

{
	DeleteAllSt(200,true);
}
Mio hurries to stop the two as they draw closer to Noiz&.
Her face is still bright red&.

{
	St("C",730, @0,@0,"stキオ_通常_shock");
	FadeSt("C",200,true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm03/9000420b10">
"Eh&, but&.&.&."

{
	St("L",740, @0,@0,"stミオ_通常_shy");
	FadeSt("L",200,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000430b11">
"Let's just run away!"

{
	St("R",730, @0,@0,"stナオ_通常_shout");
	FadeSt("R",200,true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm03/9000440b13">
"But we haven't beaten him yet!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("L",740, @0,@0,"stミオ_通常_shout2");
	FadeSt("L",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm03/9000450b11">
"You don't have to!"

{
	SetVolumeEX("@dm*", 1000, 0, null);

	DeleteAllSt(180,true);

	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1000, 0, null);
	Wait(1000);

	CreateSE("SE02","se物体_ドア平凡_鳴る01");
	MusicStart("SE02",0,700,0,1000,null,false);
}
While screaming&, Mio dashes out of the store&. The older 
brothers chase after her in a hurry&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0400.nss"]

}
