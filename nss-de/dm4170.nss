//<continuation number="270">
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


scene dm4170.nss_MAIN
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
	$GameName = "dm4180.nss";

}


scene dm4170.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

/	SoundPlay("@dm009",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, -501, -463, "cg/bg/l/bg301041_5_プラチナジェイル通り路地02_l.jpg");

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	FadeDelete("絵背景", 300, null, true);
	SetVolumeEX("@dm*", 3000, 0, null);
}
The man laughs scornfully as Clear faces him and takes a 
step forward&.

//YO WHAT'S GOING ON HERE

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	SoundPlay("@dm007a",0,450,true);

	FwPro("fw蒼葉_通常_worry4",900,"fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/7000010a01">
"Clear&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
What? Suddenly&, things feel different&.&.&.

{
	St("C",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("C",200,true);
}
The men start to circle around the changed Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"stクリア_正面マスクあり_normal");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/7000020a04">
"&.&.&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/7000030a04">
"I can't forgive you for laying your hand on Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm41/7000040e42">
"Haah? Whaddya' sayin'?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/7000050a04">
"I said that it's unforgivable&."

{	Fw("fwmチンピラA_通常_normal");}
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm41/7000060e42">
"Shut up&, you bitch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	DeleteFw();

//※クリアがチンピラをぶん殴る
	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	DeleteSt("C", 0,true);
	FadeDelete("絵フラッシュ白", 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm41/7000070e42">
"Gah!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Suddenly&, Clear punches the hoodlum down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵演出上", 1000, 0, InBottom, "cg/bg/m/bg301041_5_プラチナジェイル通り路地02_m.jpg");

	CreateSE("SE01","se人体_衝撃_叩く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵演出上", 300, 1000, Dxl1, false);

	Wait(300);

	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,700,0,1000,null,false);
	BGPlainShake(1500,300,0,5,0,0,1000,Dxl1,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
That isn't the only thing that startles me&.&.&. Clear's punch
is so powerful that the man is blown off his feet&.

Clear turns around&, visibly relaxed&, and faces the glasses guy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("C",0,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵演出上", 300, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/7000080a04">
"You're the one that harmed Master&. That's why I won't
 forgive you&."

{	Fw("fwmイナダ_通常_normal");}
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/7000090c05">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
The once composed man's face warps&. He walks up to Clear 
and grabs him by the collar&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/7000100c05">
"Bastard&, don't get so cocky&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	DeleteFw();

//※クリアがアニキをぶん殴る
	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1300,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);
	FadeDelete("絵フラッシュ白", 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/7000110c05">
"Gfuh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/7000120a04">
"Apologize to Master&."

{	Fw("fwmイナダ_通常_normal");}
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/7000130c05">
"Asshole&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/7000140a04">
"Apologize&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	DeleteFw();

//※クリア、アニキを蹴る
	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,700,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);
	FadeDelete("絵フラッシュ白", 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/7000150c05">
"Ugh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/7000160a01">
"Clear&, stop it!"

{
	St("C",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/7000170a04">
"Quickly&."

{	Fw("fwmイナダ_通常_normal");}
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/7000180c05">
"&.&.&.Who&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	DeleteFw();

//※クリア、アニキを蹴る
	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);
	FadeDelete("絵フラッシュ白", 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/7000190c05">
"Gugh&, gah!"

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/7000200a01">
"Clear!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
He'll die like this&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"buクリア_正面マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
I grab onto Clear's shoulders as strongly as I can&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/7000210a01">
"Clear&, stop it already!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/7000220a04">
"But&, Master&. He-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_rage",2800,"fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/7000230a01">
"I'm fine! &.&.&.Just listen to me&, I'm fine&. So stop&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/7000240a04">
"&.&.&.All right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
Clear's bloodthirst dies down and he slouches dejectedly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	CreateSE("SE03","se人体_動作_衣擦れ14");
	MusicStart("SE03",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm41/7000250c05">
"Ughh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
Around us&, all of the yakuza lay on the ground groaning&.

He really overdid it&.&.&.

But why did it have to turn out like this?

It was like Clear became an entirely different person&.&.&.


&.&.Anyway&, it would be a good idea to get out of here&. Fast&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/7000260a01">
"Let's go&."

{	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/7000270a04">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
I quickly lead Clear along and retrace our steps&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：トランジしっくりこないので黒フェードにします
	ClearFadeAll(2000, true);

	Wait(1000);

//※次ファイル["dm4180.nss"]

}
