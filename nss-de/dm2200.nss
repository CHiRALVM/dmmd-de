//<continuation number="40">
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


scene dm2200.nss_MAIN
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
	$GameName = "dm2210.nss";

}


scene dm2200.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);

	OnBG(10,"bg302012_5_グリッター部屋02");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/0000010a01">
"&.&.&.Whew&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
We didn't really do anything bad&, so why do I feel so 
guilty about it?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(1000,true);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I adjust my clothes&, leave the room&, and head to the bar 
counter&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 100, -530, -472, "cg/bg/l/bg302021_5_グリッター居間_l.jpg");
	Move("絵背景100", 500, -632, -472, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
After I rinse my mouth at the sink&, I plop down onto the 
sofa&.

{
	CreateSE("SE02","se擬音_水_シャワー01");
	MusicStart("SE02",3000,250,0,800,null,true);
}
I can hear the sound of the shower downstairs&.

{
	Fw("fw蒼葉_通常_worry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/0000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE02", 3000, 0, null);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
How did this happen again?

Let's see&.&.&.

I'm sure he misunderstood something and kissed me&, then&.&.&.

He said something that made no sense&, like I was after him or something&. Does he really see me that way?

Though I have absolutely no memory of thinking like that&.&.&.

Is he extremely self-conscious?

But it kinda feels like he didn't mean it that way&.&.&.

I don't understand at all&.&.&.

We don't have time to do crap like this in the first place&.
This is nuts&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く05");
	MusicStart("SE01",0,700,0,1200,null,false);

	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
While I sit there lost in thought&, Noiz comes back up to 
the second floor&.

{
	SetVolumeEX("SE*", 1000, 0, null);

	St("C",740, @0,@0,"stノイズ_通常帽子なし_normal2");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/0000030a03">
"Shower&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/0000040a01">
"&.&.&.Okay&, Thanks&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I get up from the couch and pass by Noiz&.

A faint scent of soap comes from Noiz's still wet hair&.&.&. 
It makes my heart beat a little faster&.

&.&.&.I'd better cool my head down&.

I hurry down the stairs and head for the bathroom&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);

	Wait(1000);

//※次ファイル["dm2210.nss"]

}
