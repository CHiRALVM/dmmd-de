//<continuation number="10">
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


scene dm3430lv.nss_MAIN
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
	#ev343ミンク、頭を撫でる=true;
	#ev343ミンク、頭を撫でるa=true;
	#ev343ミンク、頭を撫でるb=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3440.nss";

}


scene dm3430lv.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateTextureSP("絵ＥＶ101", 101, -985, -448, "cg/ev/l/ev343ミンク、頭を撫でるa_l.jpg");
	CreateTextureSP("絵ＥＶ100", 100, -985, -448, "cg/ev/l/ev343ミンク、頭を撫でる_l.jpg");

	FadeDelete("上背景", 2000, null, true);

	Wait(1000);

	FadeDelete("絵ＥＶ101", 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/3000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
When I open my eyes&, I feel the touch of a soft pillow&.

When did I get back to this room&.&.&.?

I try to remember&, but my head feels as heavy as a brick&.

{
	CreateSE("SE01","se物体_ベッド_鳴る01");
	MusicStart("SE01",0,200,0,800,null,false);
	Wait(500);
}

&.&.&.I heard something just now&.

Is someone outside the window?

I look&, only able to turn my head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,500,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵ＥＶ103", 103, Center, Middle, "cg/ev/ev343ミンク、頭を撫でる.jpg");
	CreateTextureEX("絵ＥＶ102", 102, -109, -193, "cg/ev/l/ev343ミンク、頭を撫でる_l.jpg");

	Move("絵ＥＶ100", 1000, -905, -448, Dxl1, false);
	Move("絵ＥＶ102", 1000, -30, -193, Dxl1, false);
	Fade("絵ＥＶ102", 1000, 1000, null, true);

	Delete("絵ＥＶ100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Mink is sitting on the sofa by the window&.
He's looking outside&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ102", 1000, -30, -47, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.It must be because I'm half-asleep&.

For some reason&.&.&.
I see Mink offering prayers&.

Even though all he's doing is putting his hands together 
and closing his eyes&.&.&.

The lights from outside illuminate his face&, it may be 
because of that too&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ103", 103, -305, -286, "cg/ev/m/ev343ミンク、頭を撫でる_m.jpg");
	Fade("絵ＥＶ103", 500, 1000, null, true);
	Move("絵ＥＶ103", 2000, -505, -286, Dxl1, true);

	Delete("絵ＥＶ102");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
While Mink gazes outside the window&, from time to time he 
brings his pipe to his mouth&.

He seems so different from his normal&, unpredictable self
&.&.&. He really does look like he's praying&.

But why is he praying?

What does he pray for&.&.&.?
A time&, or a thing?

Does he believe in God?
Or something important?

The Mink I see now is far too different from the one I 
know&.

But by now I've noticed something&.

The way that I've been chased down by Mink is the way that he's living too&.

Abandoning everything for his goal&, plunging forward&.

I wonder what feelings are behind that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ104", 104, -505, -286, "cg/ev/m/ev343ミンク、頭を撫でるa_m.jpg");
	Fade("絵ＥＶ104", 1000, 1000, null, true);

	Delete("絵ＥＶ103");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I become sleepy&, unable to think any further&. My eyes 
close without a fight&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("絵ＥＶ105", 104, -990, -547, "cg/ev/l/ev343ミンク、頭を撫でるa_l.jpg");
	Fade("絵ＥＶ105", 1000, 1000, null, true);

	Delete("絵ＥＶ104");

	SetVolumeEF("@SE01",2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I hear Mink getting off the sofa&.

{

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);
}
His heavy footsteps pass the bed&.

{
	SetVolumeEF("@SE01",2000);
}
&.&.&.But he comes to a stop midway&.

The smell of cinnamon lingers in the air&.

He always smells like that&.
It's probably rubbed off on me as well&.

It's a wonderful scent&.&.&.

Strangely peaceful&, I feel myself sinking back into 
slumber&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 4000, 0, null);

	Wait(3000);

	CreateTextureEX("絵ＥＶ106", 104, -990, -547, "cg/ev/l/ev343ミンク、頭を撫でるb_l.jpg");
	Fade("絵ＥＶ106", 1200, 1000, null, true);

	Wait(1000);

	ClearFadeAll(3000, true);

	Wait(2000);

//※次ファイル["dm3440.nss"]

}
