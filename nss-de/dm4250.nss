//<continuation number="280">
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


scene dm4250.nss_MAIN
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
	#bg301031_5_プラチナジェイル通り路地01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4260.nss";

}


scene dm4250.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);
	CreateTextureSP("絵背景", 300, Center, Middle, "cg/bg/bg301041_5_プラチナジェイル通り路地02.jpg");
	CreateTextureSP("絵背景弐", 500, Center, Middle, "cg/bg/l/bg301041_5_プラチナジェイル通り路地02_l.jpg");

	Rotate("絵背景弐", 0, @0, @0, @-20, null,true);

	DrawDelete("上背景", 250, 100, Dxl1, "slide_01_01_0", true);

//覇：走り用エフェクト画像あればそちらを背景

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We run down a dark and narrow road&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景弐", 300, null, true);

	CreateSE("SE01","se人体_足音_一歩01");
	SetFrequency("SE01", 0, 1300, Dxl3);
	MusicStart("SE01",0,700,0,700,null,false);

	Shake("絵背景", 300, 5, 5, 0, 0, 500, Dxl1, false);
	FadeDelete("絵背景", 500, null, true);

//	Wait(500);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/5000010a04">
"Ah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Clear stops&, changes his direction&, and then stops again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/5000020a01">
"What happened?"

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/5000030a04">
"&.&.&.It's no use&. There's too many people&. We're
 surrounded&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
As if to confirm Clear's words&, I hear it grow noisy aroundus&.

{
	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,600,0,700,null,false);
	CreateSE("SE02","se人体_足音_歩く03");
	MusicStart("SE02",0,500,0,600,null,false);
	CreateSE("SE03","se人体_足音_歩く03");
	MusicStart("SE03",0,600,0,500,null,false);
	CreateSE("SE04","se人体_足音_歩く03");
	MusicStart("SE04",0,700,0,800,null,false);

	CreateTextureEX("絵背景100", 100, -514, -524, "cg/bg/l/bg301041_5_プラチナジェイル通り路地02_l.jpg");
	Move("絵背景100", 500, -514, -574, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);
}
From left and right&, people emerge&, little by little 
getting closer&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
The people that come towards us are all bad looking guys&. 
Maybe around ten of them&.

The head&, he&.&.&.
He's the guy with the glasses that Clear beat down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/5000040c05">
"Hey there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
The man in the glasses&, covered in blue and red bruises&, 
wears a petty grin on his face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/5000050c05">
"We decided that a few things needed to be done&. That we
 should return your hospitality&. &.&.Go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,600,0,700,null,false);
	CreateSE("SE02","se人体_足音_歩く03");
	MusicStart("SE02",0,500,0,600,null,false);
	CreateSE("SE03","se人体_足音_歩く03");
	MusicStart("SE03",0,600,0,500,null,false);
	CreateSE("SE04","se人体_足音_歩く03");
	MusicStart("SE04",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
He jerks his jaw in our direction and the surrounding men 
start moving in&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,10,10,0,0,500,Dxl1,true);

	Wait(300);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,10,0,0,500,Dxl1,true);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/5000060a01">
"Stop it! Don't touch me!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmチンピラA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm42/5000070e42">
"Pipe down!"

{
	DeleteFw();

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,1300,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/5000080a01">
"I said don't touch me!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

//※どかっと蹴る音
	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵演出大", 1000, 0, Middle, "cg/ev/l/ev900蒼葉蹴り汎用_l.jpg");
	CreateTextureSP("絵演出大弐", 900, Center, Middle, "cg/ev/ev900蒼葉蹴り汎用.jpg");
	Wait(50);
	Move("絵演出大", 300, -1024, 0, Dxl3, false);
	FadeDelete("絵演出大", 200, null, true);

	Wait(200);
	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 4000, "FFFFFF");
	Fade("絵色白", 100, 1000, Dxl3, true);
	Delete("絵演*");
	Wait(30);
	BGPlainShake(50,200,10,10,0,0,1000,Dxl1,false);
	FadeDelete("絵色白", 100, Dxl3, true);

	Wait(500);

	Fw("fwmチンピラA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm42/5000090e42">
"Shit&, someone help me over here!"

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/5000100a04">
"Master!"

{
	DeleteFw();

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 15, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/5000110a01">
"Let go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※どかっ、ばきっと殴る音
	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 500, 30, 30, 0, 0, 500, Dxl1, false);

	CreateSE("SE02","se戦闘_打撃_ヒット高04");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
	Fade("絵フラッシュ白", 100, 1000, Dxl1, true);
	FadeDelete("絵フラッシュ白", 300, Axl2, true);


	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 500, 30, 30, 0, 0, 500, null, false);

	CreateSE("SE02","se戦闘_打撃_ヒット高01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
	Fade("絵フラッシュ白", 100, 1000, Dxl1, true);
	FadeDelete("絵フラッシュ白", 300, Axl2, true);

	Wait(300);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
I send some people flying&, but more people pin me down 
from behind&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/5000120a04">
"Master!"

{	Fw("fwmイナダ_通常_normal");}
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/5000130c05">
"There&. If you want your master to be safe&, be obedient&. If you are&, then we won't lay a hand on him&."

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/5000140a04">
"&.&.&.Are you telling the truth?"

{	Fw("fwmイナダ_通常_normal");}
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/5000150c05">
"Yeah&."

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/5000160a01">
"Clear&, don't listen!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/5000170a04">
"But if I stay obedient Master won't be hurt&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/5000180a01">
"Idiot!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,1000,null,false);

	DeleteFw();
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
In the end&, Clear's held back by the arms just as I was&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/5000190c05">
"Well then&. The gas mask guy here will be given the best
 present I've had to offer&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
The guy in the glasses steps up to Clear and gets right up to the gas mask&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/5000200c05">
"First&, I guess I'll take off that shitty mask of yours&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/5000210a04">
"No&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/5000220c05">
"You really don't get the situation you're in&, do you? Hey&, hold him down tight&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
He reaches for the gasmask and he grabs onto the edge of 
it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/5000230a04">
"I said no!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

//※クリアが蹴りを入れる
	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
	Fade("絵フラッシュ白", 100, 1000, Dxl1, true);
	FadeDelete("絵フラッシュ白", 300, Axl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/5000240c05">
"Ugh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
Clear kicks him in the gut with his knee&.

The man slouches back&, then spits on Clear with a scowl on 
his face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/5000250c05">
"&.&.&.Motherfucker!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
	Fade("絵フラッシュ白", 100, 1000, Dxl1, true);
	FadeDelete("絵フラッシュ白", 300, Axl2, true);

	CreateTextureEX("絵背景100", 100, -514, -524, "cg/bg/l/bg301041_5_プラチナジェイル通り路地02_l.jpg");
	Move("絵背景100", 300, -514, -574, Dxl3, false);
	Fade("絵背景100", 300, 1000, null, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");


//	CreateSE("SE01","se戦闘_打撃_ヒット低02");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
//	Fade("絵フラッシュ白", 100, 1000, Dxl1, true);
//	FadeDelete("絵フラッシュ白", 300, Axl2, true);

//	Wait(300);

//	CreateSE("SE01","se戦闘_打撃_ヒット高04");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
//	Fade("絵フラッシュ白", 100, 1000, Dxl1, true);
//	FadeDelete("絵フラッシュ白", 300, Axl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
The enraged man in glasses grabs Clear's head and pulls it down to the ground&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/5000260a01">
"Clear!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
	Fade("絵フラッシュ白", 100, 1000, Dxl1, true);
	FadeDelete("絵フラッシュ白", 300, Axl2, true);

	Wait(200);

	CreateSE("SE02","se戦闘_打撃_ヒット低02");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
	Fade("絵フラッシュ白", 100, 1000, Dxl1, true);
	FadeDelete("絵フラッシュ白", 300, Axl2, true);

	Wait(200);

	CreateSE("SE03","se戦闘_打撃_ヒット高04");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
	Fade("絵フラッシュ白", 100, 1000, Dxl1, true);
	FadeDelete("絵フラッシュ白", 300, Axl2, true);

	Wait(200);

	CreateSE("SE04","se戦闘_打撃_ヒット低02");
	MusicStart("SE04",0,700,0,1000,null,false);
	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
	Fade("絵フラッシュ白", 100, 1000, Dxl1, true);
	FadeDelete("絵フラッシュ白", 300, Axl2, true);

	Wait(200);

	CreateSE("SE05","se戦闘_打撃_ヒット高04");
	MusicStart("SE05",0,700,0,1000,null,false);
	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");
	Fade("絵フラッシュ白", 100, 1000, Dxl1, true);
	FadeDelete("絵フラッシュ白", 300, Axl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
He starts to kick Clear mercilessly&.

The other members do so too&, and I can see countless feet 
kicking into the cowering Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,1300,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	FwPro("fw蒼葉_通常_pain",3400,"fw蒼葉_通常_shout2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/5000270a01">
"Let go-! Shit&, let go of me! Clear!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
It's completely one-sided&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmイナダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【兄貴】
<voice name="兄貴" class="兄貴" src="voice/dm42/5000280c05">
"This should be enough&. He'll die if we keep going&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
The glasses guy stops kicking with a satisfied look on his face&, and kicks Clear's face to the side&. Clear firmly 
grabs onto his legs with both hands and shakes him&.

&.&.&.He's alive&, right?
He's okay&, right?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4260.nss"]

}
