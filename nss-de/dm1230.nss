
//<continuation number="80">
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


scene dm1230.nss_MAIN
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
	RainDropDelete(0);//このコマンドで雨消してください、念のためにファイル出る時にも記載しておいて下さい
	RainDrop2Delete(0);//このコマンドで雨消してください、念のためにファイル出る時にも記載しておいて下さい
	RainDropStartDelete();
	$GameName = "dm1230sl.nss";

}


scene dm1230.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg301011_5_プラチナジェイル大通り1赤");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
I looked all around for Koujaku&, but still couldn't find 
him&.

I ended up back on Main Street&, with sweat dripping down 
my face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	RainDropStart(740,10);

	CreateSE("SE01","se環境_自然_小雨");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
Raindrops start falling harder and harder&.

All of Platinum Jail's weather is controlled&, so a program is running to make this rain fall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/3000010a01">
"Let's get back so we don't get drenched&."

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/3000020a06">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Not that I hate the rain&, I just don't like getting wet&.

And Koujaku might head back too if it's raining&.&.&.

With that in mind&, I scurry down Main Street&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);

	RainDropStartConnect(0);

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	CreateSE("SE01","se環境_自然_雨01L");
	MusicStart("SE01",3000,500,0,1000,null,true);

	RainDrop(740,0,128);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
By the time I got to Glitter&, it was a total downpour&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);

	RainDropDelete(0);
	RainDropStartDelete();

	SetVolumeEX("SE01", 3000, 0, null);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	CreateSE("SE02","se物体_グリッター玄関_扉開く01a");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("SE01", 1000, 0, null);
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_0", true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/3000030a01">
"We got pretty wet&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
We go inside&, and I take a breath&.

My clothes are soaked and cold&.

I take them off&, go into the bathroom to get a towel&, then 
dry them off&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/3000040a01">
"Did you get wet&, Ren?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE*", 1800, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
I touch the clumps of blue fur coming out of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/3000050a06">
"I'm fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/3000060a01">
"I can tell&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
My worry of him breaking down&.

{
	CreateSE("SE02","se人体_足音_歩く05");
	MusicStart("SE02",0,600,0,1000,null,false);
}
I put Ren down on the floor and go upstairs with a towel 
around my neck&.

{	SetVolumeEX("SE*", 1500, 0, null);}
I pass the living room&, go down the hallway to the bedroom&,
and sit on the bed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
My eyes move to the window&. It's covered in droplets of 
rain&, but it's soundproof so I can't hear the sound of it 
hitting&.

I wonder if Koujaku is okay&.
He must be soaking wet&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");
	MusicStart("SE01",0,300,0,1000,null,false);

	Wait(1000);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/3000070a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
 A sound&.&.&. from the entryway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se物体_ドア木_扉開く01a");
	MusicStart("SE02",0,700,0,1000,null,false);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(500,true);

	CreateSE("SE01","se人体_足音_歩く06L");
	MusicStart("SE01",0,100,0,500,null,true);
	SetVolumeEX("SE*", 2000, 600, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I quickly get up and look out my door&.

&.&.&.Koujaku&.
He's coming up the stairs&.

{
	SetVolumeEX("SE*", 500, 0, null);

	St("C",740, @0,@0,"st紅雀_通常_angry3");
	FadeSt("C",200,true);

	CreateSE("SE02","se擬音_水_はねる01");
	MusicStart("SE02",0,450,0,600,null,true);
	SetVolumeEX("SE02", 1000, 0, null);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/3000080a02">
"&.&.&.&.&."

So he's back&.
I want to say something&, but I swallow my words instead&.

He's drenched from head to toe&. 

His expression is dark and shows a hint of restlessness&.

{
	CreateSE("SE01","se人体_足音_歩く06L");
	MusicStart("SE01",0,700,0,500,null,false);

	DeleteAllSt(200,true);
}
It looks like something big might've happened&, as he has a gloomy air around him&.

{
	CreateSE("SE02","se擬音_水_はねる01");
	MusicStart("SE02",0,600,0,600,null,true);
	SetVolumeEX("SE02", 1000, 0, null);
}
As he walks&, I can hear the sound of water dripping&.

I stand in my doorway&, nervous&, and wait for Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 500, 0, null);

	St("C",740, @0,@0,"bu紅雀_通常_angry3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
He stops right in front of me&.

Why does he have such an intimidating attitude?
It's hard for me to speak&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	RainDropDelete(0);

//※次ファイル["dm1230sl.nss"]

}
