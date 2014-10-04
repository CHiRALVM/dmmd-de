//<continuation number="520">
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


scene dm4280lv.nss_MAIN
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

	#bg301081_5_プラチナジェイル水場通り=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4290lv.nss";

}


scene dm4280lv.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm004",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg301081_5_プラチナジェイル水場通り");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
A water fountain lies in a large area&, surrounded by 
benches&.

A round lump sits in front of the fountain&.

&.&.&.I could tell by his back that it was Clear&.

{
	CreateSE("SE01","se人体_足音_歩く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 3000, 0, null);
}
I felt that if I came up to him too suddenly he'd run 
away&, so I slowly stepped up to him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000010a01">
"&.&.&.Clear&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
His silver hair twitches&.

His hair is slightly wet&. He must've dunked his head in 
the water&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000020a01">
"You&.&.&. is your face okay too? Did you wash it? There was
 so much fire&, I was worried that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000030a04">
"I just washed it&. I'm fine now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateTextureEX("絵背景100", 100, -506, -165, "cg/bg/m/bg301081_5_プラチナジェイル水場通り_m.jpg");
	Move("絵背景100", 1000, -506, -260, Dxl1, false);
	Fade("絵背景100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Clear answers without turning his face towards me&.

I lean over and take a close look at him&.
He still has his gasmask on&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 2000, 0, null);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000040a01">
"Why won't you look at me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000050a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000060a01">
"Are you really okay? It doesn't still hurt&, does it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000070a04">
"No&. It does not hurt&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000080a01">
"Why won't you take off your mask? If you don't get all of
 it&, it'll be bad&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000090a04">
"I'm fine&. I'll wash the rest later&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000100a01">
"Later?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000110a04">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
&.&.&.He's acting weird&.

Only washing off a little of the sulfuric acid isn't 
enough&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SoundPlay("@dm012",0,450,true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000120a01">
"You aren't pretending that it doesn't hurt&, right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000130a04">
"I am not&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000140a01">
"Then why don't you take off your mask and wash off your
 face?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000150a04">
"&.&.&.&.&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000160a01">
"Clear&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000170a04">
"I was told that I should never remove my mask&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000180a01">
"Who said that?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000190a04">
"My Grandpa&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000200a01">
"Grandpa&.&.&. The person you lived with before?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000210a04">
"Yes&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000220a01">
"Why did he tell you that you shouldn't remove your mask?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000230a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Clear stays silent&.

Nothing sounds in my ears other than the streaming of the 
water in the fountain&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000240a04">
"&.&.&.Grandpa said I was different from other people&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000250a01">
"Different from other people?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000260a04">
"Yes&. That my face was different from theirs&, so I mustn't
 show it&. I must look completely different from other
 people&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000270a04">
"It's just like how those people back there called me a
 monster&. I'm abnormal&. So&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000280a04">
"So please&, Master&. Please don't look at my face&. I
 definitely don't want you to hate me&, so I don't want to
 show you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000290a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("絵背景101", 101, -816, -485, "cg/bg/l/bg301081_5_プラチナジェイル水場通り_l.jpg");
	Move("絵背景101", 500, -816, -513, Dxl1, false);
	Fade("絵背景101", 500, 1000, null, true);
	Delete("絵背景100");

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
I close the distance between me and the now silent Clear&, 
then place my hand on his shoulder&.

His entire body jolts&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000300a01">
"&.&.&.I wouldn't hate you just because of your face&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000310a04">
"&.&.&.Why do you say that?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000320a04">
"You've never seen my face before&, Master&. So you don't
 know if you will come to hate me or not&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Clear's voice is frail but stubborn&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000330a04">
"On what basis can you say that? Even if you're my master&,
 I can't&. I mustn't&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000340a01">
"&.&.&.It's true that I've never seen your face before&. But
 I've always been with you because of what you're like on
 the inside&, not because of your face&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000350a01">
"I already know what kind of guy you are without knowing
 what kind of face you have&. That's why I'd never hate you
 no matter what kind of face you had&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000360a04">
"&.&.&.&.&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000370a01">
"You're a weird scatterbrain and you do stupid things on
 purpose&, but I've never hated you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000380a01">
"So even if you have a weird face&, you're still the Clear I know&, right? I have no reason to hate you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Clear shakes his head and turns it just a little&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000390a04">
"&.&.&.Are you being truthful?"

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000400a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000410a04">
"Would you really never hate me no matter what kind of face I had?"

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000420a01">
"Never&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000430a04">
"&.&.&.Can I believe you?"

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000440a01">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
I look at his face&, and I can sort of see his eyes 
sparkling behind that gas mask&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000450a01">
"Aren't I your master?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000460a04">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000470a01">
"Then believe in me&. It's sad if you can't trust your
 master at a time like this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000480a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	FadeDelete("絵背景101", 500, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
Clear continues to stay silent and slowly turns to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000490a04">
"&.&.&.All right&. I'll trust you&, Master&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
With a nervous voice&, Clear puts his hands to his mask&.

His fingertips shake under his white gloves&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000500a04">
"You really won't come to hate me&, right?"

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/8000510a01">
"I won't&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/8000520a04">
"&.&.&.I understand&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	DeleteAllSt(200,true);
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
With a frail voice and a resolved will&, Clear slowly takes off the gas mask&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4290lv.nss"]

}
