//<continuation number="350">
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


scene dm2530.nss_MAIN
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
	#ev253蒼葉、ノイズをお姫様抱っこ=true;
	#bg304022_5_東江タワー前通り崩壊中=true;
	#bg304031_5_東江タワー廊下01崩壊中=true;
	#bg304032_5_東江タワー廊下02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2540.nss";

}


scene dm2530.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg304032_5_東江タワー廊下02");
	FadeBG(0,true);

	CreateSE("SE01","se物体_ドア東江自動_扉開く01");//あきゅん「ＳＥ：se物体_ドア東江自動_扉開く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXmul("絵色赤", 1000, RED);
	Fade("絵色赤", 300, 600, null, true);


	CreateSE("SE11","se物体_東江タワー_地鳴り01L");
	MusicStart("SE11",0,700,0,1000,null,true);
	CreateSE("SE22","se物体_東江タワー_アラーム01L");
	MusicStart("SE22",0,300,0,1000,null,true);
	CreateVOICE("合成音声","dm25/1000010e14");
	MusicStart("合成音声",0,700,0,1000,null,true);

	dm1500ShakeLoop("絵シェイク","bg304032_5_東江タワー廊下02",400,2);

	Delete("上背景");

	DrawDelete("絵色黒", 1000, 100, null, "slide_06_00_0", true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When the door opens&, I can see the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE走01","se人体_足音_走る03");
	MusicStart("SE走01",0,700,0,1000,null,false);

	CreateSE("SE走02","se人体_足音_走る03");
	MusicStart("SE走02",0,700,0,800,null,false);

	CreateColorSP("絵黒幕", 5000, "BLACK");

	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	dm1500ShakeLoop("絵シェイク","bg304031_5_東江タワー廊下01",400,2);


	OnBG(10,"bg304031_5_東江タワー廊下01");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 250, 100, null, "slide_01_01_0", true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
The exit is just a bit farther away&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("合成音声", 5000, 0, null);
	SetVolumeEX("SE22", 5000, 0, null);

	SetVolumeEX("SE走*", 1000, 0, null);

	CreateSE("SE01","se物体_東江タワー_爆発01");//あきゅん「ＳＥ：se物体_東江タワー_爆発01」
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(500,300,0,100,0,0,1000,null,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000010a01">
"!?"

{
	Fw("fwノイズ_通常_shock");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000020a03">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se物体_東江タワー_地割れ01");//あきゅん「ＳＥ：se物体_東江タワー_地割れ01」
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 500, -328, -105, "cg/bg/l/bg304031_5_東江タワー廊下01_l.jpg");
	Shake_LoopFree("@絵背景100",0,5,0,0,1000);
	Move("絵背景100", 250, -328, -23, Dxl1, false);
	Fade("絵背景100", 250, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I ran along the cracks in the wall&, my feet shaking while  the building violently roared&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※壁と天井が盛大に崩れてくる
	CreateSE("SE01","se物体_東江タワー_地割れ02");//あきゅん「ＳＥ：se物体_東江タワー_地割れ02」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE03","se人体_動作_衣擦れ25");
	MusicStart("SE03",0,600,0,800,null,false);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


	OnBG(10,"bg304031_5_東江タワー廊下01崩壊中");
	FadeBG(0,true);

	dm1500ShakeLoop("絵シェイク","bg304031_5_東江タワー廊下01崩壊中",400,2);


	Delete("絵背景100");
	CreateTextureSP("絵背景101", 101, -328, -23, "cg/bg/l/bg304031_5_東江タワー廊下01崩壊中_l.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
It's falling apart&.&.&.!

{
	CreateSE("SE04","se人体_衝撃_転倒01");
	MusicStart("SE04",0,700,0,1000,null,false);
	CreateSE("SE05","se人体_衝撃_転倒02");
	MusicStart("SE05",0,700,0,1000,null,false);
}
I was covering my face with both arms&, but the tremors 
pushed me down to the ground&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000030a01">
"&.&.&.Hgh&, hck&, Noiz&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵黒幕", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I cough while trying to both inhale the air that's mixed 
with dust and dirt&, and kick away all the rubble in my way 
at the same time&.

{
	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,800,null,false);
}
&.&.&.And then something soft touched my head&.

I touch it with my hand and feel a shock&.

This sensation&, is it possibly&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景101", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000040a01">
"&.&.&.Noiz!?"

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE01", 1500, 0, null);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000050a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Noiz&.&.&. is on his hands and knees trying to protect me&.

There's a pile of rubble on his back&.

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000051a03">
"&.&.&.&.&.!"

{
	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,1200,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");
}
His face warps in pain&, and he falls down to the ground 
while breathing frantically&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000060a01">
"Noiz&, hey! Are you okay!?"

{
	Fw("fwノイズ_通常_pain");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000070a03">
"&.&.&.Ow&.&.&. You're- hurt-"

{
	Fw("fw蒼葉_通常_shout");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000080a01">
"Nevermind me&, what about you!?"

{
	Fw("fwノイズ_通常_pride2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000090a03">
"Haha&.&.&.Honestly&, I can't really&.&.&.tell where the pain is&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE01", 1500, 0, null);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 3, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Noiz's body slants downward&. Both his back and his hair arecovered in dust&, and his clothes are completely torn apart&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000100a01">
"Hey&.&.&. Are you okay? Don't you even move&.&.&."

{
	Fw("fwノイズ_通常_pain");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000110a03">
"Now&.&.&. I think something just broke&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE01", 1000, 0, null);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Noiz pushes out one of his shaking arms&.

His wrists are unnaturally bent and twisted&.

When I look more carefully&, I see his ankle's twisted into an unnatural shape&.

This&.&.&. would hurt to a normal human&, but for Noiz who had only just regained his sense of pain&, it must be absolute  hell&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_pride2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000120a03">
"Ouch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000130a01">
"Don't try to move! Shit&, we have get out somehow&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_東江タワー_爆発01");//あきゅん「ＳＥ：se物体_東江タワー_爆発01」
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(5000,300,0,60,0,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Another tremor shakes the tower&.

We'll be crushed if we don't get out of here soon&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000140a03">
"&.&.&.Go on alone&."

{
	Fw("fw蒼葉_通常_shout");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000150a01">
"Fuck no&, idiot!"

{
	Fw("fwノイズ_通常_pride2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000160a03">
"Haha&.&.&. You even said it yourself earlier&.&.&. Besides&, I
 really can't move&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ14");
	MusicStart("SE02",0,600,0,800,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000170a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
&.&.My burn still hurts&, but it's nothing compared to what 
Noiz is experiencing right now&.

And all the rubble that hit me just left me with scratches&.
My headaches are gone for the most part&, and I can move 
just fine&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
&.&.&.All right&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm016",0,450,true);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000180a01">
"This may hurt a little&, but put up with it&."

{
	Fw("fwノイズ_通常_shock");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000190a03">
"!? What&.&.&. Hey!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_抱く01");//あきゅん「ＳＥ：se人体_動作_抱く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I put my hands under Noiz's knees and shoulders&, then pull 
him up with care&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("絵背景200", 200, -241, -286, "cg/bg/m/bg304031_5_東江タワー廊下01崩壊中_m.jpg");
	Shake_LoopFree("@絵背景200",0,5,0,0,1000);
	Move("絵背景200", 500, -241, -113, Dxl1, false);
	Fade("絵背景200", 500, 1000, null, true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000200a01">
"Okay&.&.&.!"

{
	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE01", 1000, 0, null);

	Fw("fwノイズ_通常_shout");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000210a03">
"What're you doing&, put me down!"

{
	Fw("fw蒼葉_通常_hard2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000220a01">
"No&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
He's a slim guy&, but he's still pretty heavy&.

But I don't care about that right now&.
I can't even let myself think about it&.

Anyway&, we have to get the hell out of here&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000230a01">
"Okay&.&.&. Let's go! Hold on!"

{
	Fw("fwノイズ_通常_shock");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000240a03">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_東江タワー_地鳴り01L");
	MusicStart("SE01",2000,700,0,1000,null,true);

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureSP("絵ＥＶ100", 1000, -718, -370, "cg/ev/l/ev253蒼葉、ノイズをお姫様抱っこ_l.jpg");
	Shake_LoopFree("@絵ＥＶ100",0,2,0,0,1000);
	Move("絵ＥＶ100", 500, -485, -571, Dxl3, false);
	FadeDelete("絵背景200", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
As the virbrations began to grow stronger&, I ran while 
holding Noiz with all I had&.

Avoiding the collapsing walls as much as I could&, I kicked away all of the rubble in my way&.

I can see the elevator door now&.

Just&.&.&. a little more!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000250a03">
"&.&.&.Heh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000260a01">
"What? Does it hurt somewhere? Just wait a little longer&.&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000270a03">
"That's not it&.&.&. Haha!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000280a01">
"&.&.&.Why are you laughing&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵ＥＶ101", 1001, Center, Middle, "cg/ev/ev253蒼葉、ノイズをお姫様抱っこ.jpg");
	Delete("絵ＥＶ100");

	CreatePlainSP("絵揺れ", 1005);
	Shake_LoopFree("@絵揺れ",0,1,0,0,500);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000290a03">
"Just look at the situation we're in&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000300a01">
"I'm on the brink of death here!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/3000310a03">
"Sorry&.&.&. thanks&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000320a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
I felt my energy come back after Noiz murmured those words&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE03","se物体_東江タワー_爆発01");//あきゅん「ＳＥ：se物体_東江タワー_爆発01」
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateTextureSP("絵背景100", 100, -977, 0, "cg/bg/l/bg304031_5_東江タワー廊下01崩壊中_l.jpg");
	dm1500ShakeLoop("絵シェイク","l/bg304031_5_東江タワー廊下01崩壊中_l",400,2);
	Delete("絵揺れ");
	FadeDelete("絵ＥＶ101", 200, null, true);

//	CreatePlainSP("絵板写", 990);
//	Shake("絵板写", 300, 0, 60, 0, 0, 500, null, true);
//	Delete("絵板写");

	BGPlainShake(500,300,0,60,0,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000330a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
Right before we reached the entrance&, a ceiling light fell down&.

I barely avoided it&, but it was blocking the way&.

I somehow maneuver around it and head for the door&.

The exit&.&.&. is right in front of me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵ＥＶ102", 1003, -472, -50, "cg/ev/l/ev253蒼葉、ノイズをお姫様抱っこ_l.jpg");
	CreateTextureSP("絵ＥＶ102下", 1002, -472, -50, "cg/ev/l/ev253蒼葉、ノイズをお姫様抱っこ_l.jpg");

	Shake_LoopFree("@絵ＥＶ102",0,3,0,0,1000);
	Move("絵ＥＶ102*", 500, -272, 0, Dxl3, false);
	FadeDelete("絵板写", 500, null, true);

	Delete("絵背景100");
	Delete("絵シェイク*");
	Delete("絵dm*");
	Delete("絵色*");
	Shake_LoopDelete();

	SetVolumeEX("@dm016", 3000, 600, null);

//	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000340a01">
"Urrryahhhhhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("合成*", 2000, 0, null);

	CreateSE("SE05","se物体_東江タワー_地割れ01");//あきゅん「ＳＥ：se物体_東江タワー_地割れ01」
	MusicStart("SE05",0,700,0,1000,null,false);
	CreateSE("SE06","se物体_東江タワー_地割れ02");//あきゅん「ＳＥ：se物体_東江タワー_地割れ02」
	MusicStart("SE06",0,700,0,1000,null,false);
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);
	Delete("絵ＥＶ*");
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
I passed through the nearly destroyed door and made it 
outside the tower&.

I kept running full speed for some distance&, and fell to 
my knees when I had finally reached a safe place&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 1000, 0, null);

	OnBG(10,"bg304022_5_東江タワー前通り崩壊中");
	FadeBG(0,true);

	CreateTextureSP("絵背景50", 50, Center, Middle, "cg/bg/bg304022_5_東江タワー前通り崩壊中.jpg");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/l/bg304022_5_東江タワー前通り崩壊中_l.jpg");
	Move("絵背景100", 1000, @0, @-100, Dxl1, false);

	CreateSE("SE12","se物体_東江タワー_地鳴り01L");//あきゅん「ＳＥ：se物体_東江タワー_地割れ01」
	MusicStart("SE12",0,450,0,1000,null,true);


	CreateMovieSPsub("煙１", 500, 0, 0, true, true, "dx/mvk100&.ngs");
	Zoom("煙１", 0, 5000, 5000, null, true);

	Shake_Loop("@絵背景100","shake01");
	MoveFTP1("@絵背景100",3500,10,2);

	Shake_LoopFree("@絵背景50",0,7,0,0,1000);

	FadeDelete("絵色黒", 1000, null, true);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(1000);

//	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/3000350a01">
"Ha&, haa&, haa&, ha&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
I put down Noiz&, fell to the ground&, and then looked up&.

My lungs are blasted&.&.&.

I can barely take in air as it is&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE11","se物体_東江タワー_倒壊01");//あきゅん「ＳＥ：se物体_東江タワー_倒壊01」
	MusicStart("SE11",0,700,0,1000,null,true);

	Move("絵背景100", 1000, @0, @200, Dxl3, false);
	FadeDelete("絵背景100", 1000, null, true);

	Wait(500);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

	Delete("煙*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0116]
Immediately after we got out of the tower&, I could hear it tumbling down&, down&.&.&.

{
	SetVolumeEX("SE*", 5000, 300, null);
}
Shrieks and screams rose up from the gathered onlookers 
who were running away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolumeEX("SE*", 5000, 0, null);
	SetVolumeEX("@dm*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
Now&.&.&.
It's really over&.

While we laid there&, we watched the tower fall to pieces&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("@dm*", 3000, 0, null);

	ClearFadeAll(3000, true);
	Wait(6000);

//※次ファイル["dm2540.nss"]

}
