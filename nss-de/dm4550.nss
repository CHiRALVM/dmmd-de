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


scene dm4550.nss_MAIN
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

	#dm4550_Add1=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4560.nss";

}


scene dm4550.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//※演出：画面暗転／場面転換

	PrintBG("上背景", 30000);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/5000010a01">
"&.&.&.All right&."

{
	Fw("fw蒼葉_通常_shout");

	CreateSE("SE01","se戦闘_衝撃_爆発煙幕弾01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 1000, 0, 20, 0, 0, 500, null, false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/5000020a01">
"I thought I told you to listen to people when they're
 talking!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("絵板写");

	St("L",730, @0,@0,"stキオ_通常_shout");
	St("C",740, @0,@0,"stナオ_通常_shout");
	St("R",730, @0,@0,"stミオ_通常_shout");
	FadeFFR("@StNameL/L*",0,1000,150,0,0,30,null, false);
	FadeFFR("@StNameC/C*",0,1000,150,0,0,30,null, false);
	FadeFFR("@StNameR/R*",0,1000,150,0,0,30,null, false);
	FadeAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//※同時
//【キオ】
//<voice name="キオ" class="キオ" src="voice/dm45/5000030b10">
"Waaaaahhhh!!!"{WaitAddText2();}
<BR>

//※同時
//【ナオ】
//<voice name="ナオ" class="ナオ" src="voice/dm45/5000040b13">
//「わーーーーー！！！」

//※同時
//【ミオ】
//<voice name="ミオ" class="ミオ" src="voice/dm45/5000050b11">
//「わーーーーー！！！」

</PRE>
	SetText();
	AddText(1,""Wah!!!!!"","ミオ","dm00/3000240b11",false,true,1000);
	AddText(2,""Wah!!!!!"","キオ","dm00/3000250b10",false,true,1000);
	AddText(3,""Wah!!!!!"","ナオ","dm00/3000260b13",false,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_足音_走り去る子供01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("@StNameL/L*", 200, @-100, @0, Dxl3, false);
	Move("@StNameC/C*", 200, @-100, @0, Dxl3, false);
	Move("@StNameR/R*", 200, @-100, @0, Dxl3, false);
	DeleteAllSt(200,true);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE02", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
When I yell at them&, the trio of brats speed out of the 
store&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm001",0,450,true);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/5000060a01">
"&.&.&.Jeez&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I sigh and look around the store&.
The goods are all over the place because those kids were 
messing around&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/5000070a01">
"Ah&, man&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
The three siblings still come and wreak havoc in the store&,
as usual&. I scold them but they never learn their lessons&.
It's still peaceful&, really&.&.&. That's what I've been 
thinking lately&.

But as I thought&, it can never be the same as it was 
before&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_足音_歩く凡人01L");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("R",740, @50,@0,"stAM凡人くん_通常_normal");
	FadeSt("R",200,false);
	Move("@StNameR/R*", 2500, @-150, @0, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【凡人くん】
<voice name="凡人くん" class="凡人くん" src="voice/dm45/5000080e59">
"Cleaning&.&.&. Cleaning&.&.&."

{
	Fw("fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/5000090a01">
"I'll help out in a second&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵背景100", 100, Center, -473, "cg/bg/l/bg102011_5_平凡店内_l.jpg");
	Move("絵背景100", 1000, @0, -573, Dxl1, false);
	Fade("絵背景100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Bonjin-kun just looks so pitiful&, so I crouch down and pickup scattered goods around the floor with him&.

And then I feel a flash of deja vu&.
I think I've done something like this before&.&.&.

&.&.&.Oh yeah&. I remember&.

When I was driving away the kids once&, I heard a loud 
noise and checked outside&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
And that was when I met Clear&.

He jumped from the roof and fell flat on the ground&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/5000100a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
No matter how long I wait&, it'll never happen again&.

&.&.&.Of course it won't&.

Even though I know it&, a pain starts to prick my chest&, 
but I just focus on cleaning up&.

{
	FadeDelete("絵背景100", 500, null, true);
}
Things can always be changed&.
Change always keeps happening&.

So even I&.&.&. need to keep going forwards&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1000, true);

	Wait(2000);

//※次ファイル["dm4560.nss"]

}
