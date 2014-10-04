//<continuation number="0">
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


scene dm0775.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0780.nss";

}


scene dm0775.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	//OnBG(10,"bg101011_1_旧住民区通り表");
	//FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ef/efbg効果01.jpg");
	CreateTextureSPsub("絵背景弐", 101, Center, Middle, "cg/ef/efbg効果01.jpg");

	Zoom("絵背景", 0, 1200, 1200, null, true);

//	SetAlias("絵背景弐","絵背景弐");
//	Request("絵背景弐", OverlayRender);

//	Fade("絵背景", 0, 900, null, true);
	Fade("絵背景弐", 0, 800, null, true);

	DrawEffect("絵背景", 5000, "LowWave", 0, 150, null);

	CreateSE("SE01","se擬音_悪夢_もぞつく01L");
	MusicStart("SE01",1000,100,0,1000,null,true);
	FadeDelete("上背景", 1000, null, true);

//体が喰われる悪夢１

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.

&.&.&.&.&.&.&.?

&.&.&.What?

What is this&.&.&.?

My body won't move&.&.&.&.

I can't move my neck&, fingers&, or feet even a single inch&. 

It was like&.&.&. my eyes were completely covered in mud&.

{
	SoundPlay("@dm006",0,450,true);
}
&.&.&.&.&.!

&.&.&.&.&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
My voice won't come out even when I try to shout&.

I open my mouth but no sound comes out&, only air&.

It's completely pitch black and there isn't even an ounce 
of light&. But&.&.&. I feel like I can't be here&.

I feel a horrible premonition&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※心臓がどくどくと鼓動を打ち始める

	CreateSE("SE02","se人体_心臓_鼓動01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEX("絵色赤", 5000, "RED");
	Fade("絵色赤", 200, 1000, Dxl1, false);

	Wait(50);
	DrawEffect("絵背景", 10, "MiddleWave ", 0, 50, null);
	Fade("絵色赤", 500, 0, Null, true);

	Wait(500);

	CreateSE("SE02","se人体_心臓_鼓動01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEX("絵色赤", 5000, "RED");
	Fade("絵色赤", 200, 1000, Dxl1, false);

	Wait(50);
	DrawEffect("絵背景", 500, "LowWave", 0, 200, null);

	Fade("絵色赤", 500, 0, Null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
This is bad&. I need to escape&.

Quickly&, right now&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE11","se人体_心臓_鼓動02L");
	MusicStart("SE11",5000,700,0,1000,null,true);
	Zoom("絵背景*", 30000, 3000, 3000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I try to squirm as much as I can&, but continue sinking 
into the mud&.

But I still have to try&.

Hurry up&, hurry up&.
&.&.&.?

What&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 0, 0, null);
	SetVolumeEX("@dm*", 0, 0, null);
//※ＳＥ：ばくん、と腕が食われる衝撃
	CreateSE("SE01","se擬音_悪夢_噛み千切る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("絵色赤", 5000, "RED");
	Fade("絵色赤", 100, 800, Dxl1, true);

	Wait(50);

	Fade("絵色赤", 100, 0, Dxl1, true);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl3, "cg/data/slide_05_00_0.png", true);

	Delete("絵背景*");
	Delete("絵黒幕");

	Wait(1000);

	CreateSE("SE11","se擬音_悪夢_もぞつく01L");
	MusicStart("SE11",0,700,0,1000,null,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Suddenly&, I feel someone pulling my right arm&.

Inside the darkness&, my right arm floats to the white top&.

Before my elbow is&.&.&.<k>nothing&.

It's all gone&, as if it was eaten off&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 2000, 900, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
While restlessly squirming in the darkness&, I feel 
something licking what's left of my lost arm&.

Like it was saying that it wanted more&.

An intense fear overtakes me&.&.&.&. and I scream&.

{	SetVolumeEX("SE11", 2000, 1050, null);}

Even though nothing sounded&, I scream&.
{	SetVolumeEX("SE11", 0, 1100, null);}
And scream&.

{	SetVolumeEX("SE11", 0, 1400, null);}
Ah!

{	SetVolumeEX("SE11", 0, 1700, null);}
Ahhhh!

{	SetVolumeEX("SE11", 0, 2000, null);}
Ahhhhhhhhhhhhhhhhhhhhhhhhhhhh!!!!!!!!!!!!!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(0, true);
	Wait(3000);

//※次ファイル["dm0780.nss"]

}
