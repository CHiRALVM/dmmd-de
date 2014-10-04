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


scene dm5180.nss_MAIN
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
	$GameName = "dm5190.nss";

}


scene dm5180.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 10, "000000");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ef/efbg効果01.jpg");
	CreateTextureSPsub("絵背景弐", 101, Center, Middle, "cg/ef/efbg効果01.jpg");

	Zoom("絵背景", 0, 1200, 1200, null, true);

	Fade("絵背景弐", 0, 800, null, true);

	DrawEffect("絵背景", 10000, "LowWave", 0, 150, null);

	CreateSE("SE01","se擬音_悪夢_もぞつく01L");
	MusicStart("SE01",1000,100,0,1000,null,true);

	FadeDelete("上背景", 1000, null, true);

	Wait(1000);

//体が喰われる悪夢２

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

&.&.&.

&.&.&.&.&.

&.&.&.&.&.&.&.?

{
	SoundPlay("@dm006",0,450,true);
}
&.&.&.What?

What is this&.&.&.?

I can't move my body&.

I can't move my neck&, nor my fingers&, nor my feet at all&.

&.&.&.This again&.

This dream again&. 
This dream where I can't move&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I can't move a muscle&, my voice won't come out&, and then&.&.&.

And then&.&.&.<k> there's that&.

My right arm shakes violently&. 
To be more exact&, the upper part of my right arm&.

Below my elbow is nothing&.

It was bitten clean off&.

It doesn't hurt&.

But it's terrifying&, the feeling of not having it there&.

That it'll always be gone&, and then&.&.&.

After that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※体が喰われる悪夢１をグレードアップ
//※ばくん、と腕が食われる衝撃

	SetVolumeEX("@dm*", 0, 0, null);
	CreateSE("SE01","se擬音_悪夢_噛み千切る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("絵色白", 5000, "WHITE");
	Fade("絵色白", 100, 1000, Dxl2, true);

	Delete("絵背景*");
	CreateTextureSP("絵背景", 2000, Center, Middle, "cg/ef/efクリアαの歌声_l.jpg");
	Rotate("絵背景", 300, @0, @0, @360, Axl1,false);
	Zoom("絵背景", 300, 2000, 2000, Axl1, false);
	Wait(50);
	Zoom("絵背景", 300, 1000, 1000, Axl3, false);
	FadeDelete("絵色白", 200, Dxl1, true);
	Wait(100);
	Delete("絵背景");
	Delete("絵色白");

	Wait(1000);

	CreateSE("SE11","se擬音_悪夢_もぞつく01L");
	MusicStart("SE11",5000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
&.&.&.&.&.

&.&.&.This time it's my leg&.

What is under my left knee is devoured&.

The blackness flickers as a strange&, numbing sensation 
tickles at the wound&.

I need to run away&. 
I need to run away quickly&.

I need to run away&.&.&. quickly&.

Quickly&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(3000);

//※次ファイル["dm5190.nss"]

}
