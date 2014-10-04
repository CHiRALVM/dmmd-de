//<continuation number="310">
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


scene dm4450_vs.nss_MAIN
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
	$GameName = "dm4460_vs.nss";

}


scene dm4450_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm019",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	St("C",740, @0,@0,"st東江_通常_smile");
	FadeSt("C",0,true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	DeleteAllSt(180,true);

	St("MR",700, @0,@0,"stクリアα_通常マスクなし_normal");
	St("ML",700, @0,@0,"stクリアα2_通常マスクなし_normal");

	CreateSE("SE01","se人体_足音_一歩03");
	MusicStart("SE01",0,800,0,1000,null,false);
	SetPan("SE01", 0, 300, Dxl3);
	Wait(200);
	CreateSE("SE02","se人体_足音_一歩03");
	MusicStart("SE02",0,800,0,1000,null,false);
	SetPan("SE02", 0, -300, Dxl3);

	FadeAllSt(180,true);

	Wait(500);
}
Toue raises his right hand&, and the two walk up on his 
signal&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw東江_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【東江】
<voice name="東江" class="東江" src="voice/dm44/5000010b02">
"These two are your little brothers&, R-2E's SP Series&. Of
 course the R-2E series has higher abilities than you -
 they're close to perfection&."

{	Fw("fw東江_通常_normal");}
//【東江】
<voice name="東江" class="東江" src="voice/dm44/5000020b02">
"To your right is α&, and to your left&, α２&."

{	Fw("fw東江_通常_smile");}
//【東江】
<voice name="東江" class="東江" src="voice/dm44/5000030b02">
"Now&, isn't this a touching family reunion?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg304121_5_東江タワー東江の間_m.jpg");


	Wait(500);
	FadeDelete("絵板写", 500, null, true);

	Wait(800);

	St("C",700, @0,@0,"buクリアα_通常マスクなし_normal");
	CreateSE("SE01","se人体_足音_一歩03");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",500,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The one named α walks up to Clear&. He wears a smiling 
face full of pride&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",700, @0,@0,"buクリアα_通常マスクなし_sigh");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/5000040b18">
"Ahh&. I don't really want to do this&, but it's not like I
 can go against Master's orders&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",700, @0,@0,"buクリアα_通常マスクなし_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/5000050b18">
"Anyway&, you can't even fight back against us&, can you?"

{	St("C",700, @0,@0,"buクリアα_通常マスクなし_pride");
	FadeSt("C",200,true);}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/5000060b18">
"If you go against your key lock&, won't your Auto Repair
 cease to work? Aren't you already breaking down&, my stupid
 older brother?"

{	Fw("fwクリア_正面マスクなし_pinch");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/5000070a04">
"&.&.&.!"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/5000080a01">
"Breaking down&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteSt("C", 0,true);
	St("C",740, @0,@0,"st東江_通常_normal2");
	FadeSt("C",0,true);

	Delete("絵背景");

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【東江】
<voice name="東江" class="東江" src="voice/dm44/5000090b02">
"They have a key lock that is set so they can't oppose
 their own kind&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm44/5000100b02">
"Usually their programming doesn't allow it in the first
 place&, but Clear is an exception&."

{	St("C",740, @0,@0,"st東江_通常_normal2");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm44/5000110b02">
"In the case they disobey their programming&, measures are
 taken: Auto Repair is turned off and ceases to function&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm44/5000120b02">
"In other words&, their body will break down and they will
 be unable to recover&. At that point our help is necessary
 for restoration&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	OnBG(10,"bg304122_5_東江タワー東江の間");
	FadeBG(0,true);

	DeleteSt("C", 0,true);
	St("C",740, @0,@0,"buクリア_正面マスクなし_serious");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_worry4");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/5000130a01">
"That&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
So that must be why Clear's been in so much pain&.&.&.

{
	CreateSE("SE01","se擬音_精神_錆びる01");
	MusicStart("SE01",0,450,0,2000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);
}
As if to only support Toue's words more&, fragments of skin start to peel off of Clear's arm and fall to the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/5000140a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	DeleteSt("C", 0,true);
	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【東江】
<voice name="東江" class="東江" src="voice/dm44/5000150b02">
"Clear's younger brothers also have a key lock&, but it has
 been overridden now&, justified because they mean to punish
 a wrongdoer&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/5000160a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("@dm*", 2000, 0, null);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵拡背景", 100, Center, Middle, "cg/bg/m/bg304121_5_東江タワー東江の間_m.jpg");
	CreateTextureSP("絵拡立絵", 1000, Center, Middle, "cg/bu/buクリアα_通常マスクなし_pride.png");

	DeleteAllSt(0,true);

	SetVertex("絵拡立絵", center, 300);

	SoundPlay("@dm008",0,450,true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/5000170b18">
"Let's go&, older brother!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景", 4000, Center, Middle, "cg/bg/bg304122_5_東江タワー東江の間.jpg");
	CreateMovieEX("絵拡動画", 1000, 286, 50, true, true, "dx/mv0003集中線01_白.ngs");
	Zoom("絵拡動画", 0, 3000, 3000, Dxl1, true);

	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵拡動画", 0, 1000, null, true);
	Zoom("絵拡立絵", 400, 2000, 2000, Dxl3, false);
	Zoom("絵拡背景", 400, 1400, 1400, Dxl2, false);
	Zoom("絵拡動画", 400, 3500, 3500, Dxl2, false);
	Wait(60);
	Fade("絵背景", 200, 1000, Dxl1, true);

	Delete("絵拡*");

	OnBG(10,"bg304122_5_東江タワー東江の間");
	FadeBG(0,true);
	Delete("絵背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
α starts to run towards Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_正面マスクなし_serious2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/5000180a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);
	DrawTransition("絵色白", 100, 0, 1000, 100, Dxl3, "cg/data/circle_05_00_0.png", true);
	Delete("絵背景");
	DeleteSt("C", 0,true);
	Wait(50);
	Fade("絵色白", 50, 0, null, true);


	Wait(30);

	CreateSE("SE02","se戦闘_打撃_ヒット高01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	DrawTransition("絵色白", 100, 0, 1000, 100, Dxl3, "cg/data/circle_08_00_0.png", true);
	Wait(50);
	Fade("絵色白", 50, 0, null, true);

	Wait(30);


	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);
	DrawTransition("絵色白", 100, 0, 1000, 100, Dxl3, "cg/data/zzex_circle_01_00_0.png", true);
	Fade("絵色白", 0, 1000, null, true);
	Wait(50);
	Fade("絵色白", 50, 0, null, true);


	Wait(30);

	CreateSE("SE02","se戦闘_打撃_ヒット低03");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵色白", 100, 1000, null, true);
	Wait(50);
	Fade("絵色白", 100, 0, null, false);
	BGPlainShake(1000,300,10,10,0,0,1000,Dxl2,true);

	Wait(30);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
α bashes into Clear in no time&, and then draws a fist and readies a kick&.

Clear tries to defend himself&, But α is too overwhelmingly
fast for him&. He ends up taking the blow&.

If only he didn't have that key lock&, Clear could fight 
back&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_一歩03");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,500,0,1000,null,false);

	St("C",740, @0,@0,"buクリア_正面マスクなし_pinch");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/5000190a04">
"&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");
	St("C",700, @0,@0,"stクリアα_通常マスクなし_pride");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/5000200b18">
"If I keep this up&, soon you won't even be able to move!
 But come on&, you're boring me!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
	Move("@StNameC/C*", 300, @500, @0, Dxl3, false);
	Fade("絵フラッシュ白", 150, 1000, Dxl1, true);
	DeleteSt("C", 0,true);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 200, 5, 5, 0, 0, 500, Dxl1, false);
	FadeDelete("絵フラッシュ白", 150, Dxl1, true);

	Fw("fwクリア_正面マスクなし_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/5000210a04">
"Ugh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se擬音_精神_錆びる01");
	MusicStart("SE02",0,600,0,2000,null,false);

	SetVolumeEX("SE*", 1800, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
Clear takes a direct hit from　α's leg&, and parts of his 
body splinter off&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/5000220a01">
"&.&.&.Clear!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
Without even caring to look&, I just run up to Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fwクリア_正面マスクなし_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/5000230a04">
"Please don't come over here!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
His words cause my entire body to go numb and freeze in 
place&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Fade("絵背景", 0, 0, null, true);

	St("C",740, @0,@0,"stクリア_正面マスクなし_normal2");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/5000240a04">
"Please don't come here&, Aoba-san&. Please&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0185]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/5000250a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	St("C",700, @0,@0,"stクリアα_通常マスクなし_sigh");
	FadeSt("C",0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304121_5_東江タワー東江の間.jpg");

	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/5000260b18">
"You're weak&, brother&. I thought that we could have at
 least had some fun&. Too bad&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXadd("絵フラッシュ白", 5000, "WHITE");
	CreateSE("SE02","se戦闘_打撃_ヒット低03");
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵フラッシュ白", 150, 1000, Dxl3, true);
	Wait(30);
	DeleteAllSt(0,true);
	Delete("絵演出");

	BGPlainShake(1000,200,10,10,0,0,1000,Axl1,false);
	FadeDelete("絵フラッシュ白", 100, Dxl1, true);

	Fw("fwクリア_正面マスクなし_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/5000270a04">
"Uh&.&.&. Ugh!"

{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/5000280a01">
"Clear!"

{	St("C",700, @0,@0,"buクリアα_通常マスクなし_normal");
	FadeSt("C",200,true);}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/5000290b18">
"Doesn't it hurt? You can't even fight back&. That's just
 the proof that you were made like the rest of us&."

{	St("C",700, @0,@0,"buクリアα_通常マスクなし_pride");
	FadeSt("C",200,true);}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/5000300b18">
"We're not human&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXadd("絵フラッシュ白", 5000, "WHITE");
	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵フラッシュ白", 150, 1000, Dxl3, true);
	Wait(30);
	Delete("絵演出");
	DeleteAllSt(0,true);
	BGPlainShake(1000,200,10,10,0,0,1000,Axl1,false);
	FadeDelete("絵フラッシュ白", 100, Dxl1, true);

//	Wait(500);

	Fw("fwクリア_正面マスクなし_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/5000310a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4460_vs.nss"]

}
