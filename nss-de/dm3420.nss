//<continuation number="50">
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


scene dm3420.nss_MAIN
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
	$GameName = "dm3430lv.nss";

	//▼頭痛レベル設定
	$HALevel=3;

}


scene dm3420.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 3000);

	CreateTextureSP("絵背景190", 190, Center, Middle, "cg/bg/bg302021_5_グリッター居間天井.jpg");
	SetShade("絵背景190", MEDIUM);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0009]
&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("上背景", 2000, null, true);
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/2000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I&.&.&.

What happened to me&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/2000020a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/2000030a01">
"&.&.&.Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Mink is there looking down at me&.
He seems out of breath&.

My body feels so dull&. I can't recall what happened&, but I can feel the swelling&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//頭痛エフェクト(0)
//※頭痛レベル：３

	$HALevel=3;
	HAFade(2000, 0,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
And&.&.&. my head hurts&, badly&.
I need to take my meds&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/2000040a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Mink narrows his eyes&.
I can see a bit of emotion in his eyes&.

But&.&.&. I can't understand why&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE03","se人体_動作_衣擦れ15");
	MusicStart("SE03",0,500,0,1000,null,false);

	CreateSE("SE02","se擬音_水_はねる06");
	MusicStart("SE02",0,400,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 3, 0, 0, 500, null, true);
	Delete("絵板写");

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/2000050a01">
"Ngh&.&.&. Ah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Mink takes his dick out of me and stands up&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}
I want to move&.&.&. but I can't&.

I can't do anything with this weight on me&.
I don't want to think about anything&.

Mink will just leave me here anyway&.

Then&.&.&. I'll be fine like this&.

I want to take a little nap&.

Just a small one&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 2000, "BLACK");
	DrawTransition("絵黒幕", 3000, 0, 1000, 500, null, "cg/data/slide_05_00_0.png", true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
&.&.&.And so&, my consciousness fades to black&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(3000);

//※次ファイル["dm3430lv.nss"]


}
