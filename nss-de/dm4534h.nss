//<continuation number="1850">
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


scene dm4534h.nss_MAIN
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
	#ev453クリアとH挿入=true;
	#ev453クリアとH挿入a=true;
	#ev453クリアとH挿入b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4535h.nss";

}


scene dm4534h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm014",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景101", 101, 0, -524, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
Clear watches me with feverish eyes as I move&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ120", 120, -1020, -573, "cg/ev/l/ev453クリアとH挿入_l.jpg");
	Move("絵ＥＶ120", 1000, -912, -282, Dxl1, false);
	Fade("絵ＥＶ120", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0352]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001140a04">
"&.&.&.Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0353]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001150a01">
"It's going in&.&.&.Ngh&, ahhh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE01", 800, 0, null);

	Move("絵ＥＶ120", 500, -884, -227, Dxl3, false);
	FadeDelete("絵ＥＶ120", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0354]
Clear holds me up with one of his hands&, and slowly lowers my hips even further&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0355]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001160a01">
"&.&.&.Tigh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
Just being used to fingers isn't enough&.&.&.

Clear's cock relentlessly swells and opens my ass further&.

I feel a pain that's like something tearing me apart with 
pressure&, and I take shallow breaths&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001170a01">
"Uh&.&.&.Ah!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0362]
I bear the pain and somehow fit his entire cock into me&.

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001180a04">
"Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);
	CreateSE("SE02","se擬音_水_はねる06");
	MusicStart("SE02",0,400,0,800,null,false);

	CreateTextureEX("絵ＥＶ121", 121, -310, -286, "cg/ev/m/ev453クリアとH挿入_m.jpg");
	Move("絵ＥＶ121", 1000, -310, -50, Dxl3, false);
	Fade("絵ＥＶ121", 1000, 1000, null, true);
	Delete("絵ＥＶ120");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0363]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001190a01">
"Ngh&, ah&.&.&.Haah&.&.&.Ah&.&.&.It&.&.&. went in&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0364]
Any more than this would be impossible&, so I hold still 
with Clear's cock still deep inside of me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
It all went in&.&.&.

I let out a huge breath&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0371]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001200a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0372]
Clear looks at me&, his eyes even more moist than before&.

I notice that I was shifting my body weight onto Clear's 
chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE03","se人体_動作_衣擦れ05");
	MusicStart("SE03",0,700,0,800,null,false);
	SetVolumeEX("SE03", 800, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0373]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001210a01">
"Shit&, sorry&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_叩く01");
	MusicStart("SE01",0,800,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,500,0,1200,null,false);

	SetVolumeEX("SE01", 100, 0, null);

	CreateTextureEX("絵ＥＶ122", 122, -802, -556, "cg/ev/l/ev453クリアとH挿入_l.jpg");
	Move("絵ＥＶ122", 500, -736, -556, Dxl3, false);
	Fade("絵ＥＶ122", 500, 1000, null, true);
	Delete("絵ＥＶ121");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0374]
As soon as a I pull away&, Clear grabs my arm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001220a04">
"It's fine&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001230a01">
"But&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001240a04">
"I'm fine with just this&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001250a01">
"&.&.&.Then&, I'll start moving&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ14");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0381]
I do what I can to not depend too much on Clear with my 
knees&, and slowly start to move my hips&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ20");
	MusicStart("SE01",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0382]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001260a01">
"Ah&.&.&.Ungh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001270a04">
"Hah&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0391]
At first I was sitting on Clear's waist&, but I start to 
move up and down&.

But still&.&.&. It really hurts just by moving this much&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ20");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵ＥＶ124", 124, -310, -50, "cg/ev/m/ev453クリアとH挿入_m.jpg");
	Move("絵ＥＶ124", 1000, -310, -124, Dxl3, false);
	Fade("絵ＥＶ124", 1000, 1000, null, true);
	Delete("絵ＥＶ122");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0392]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001280a01">
"Ugh&, ah&.&.&.Hah&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001290a04">
"&.&.&.Doesn't it hurt?"

{
	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,600,0,800,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001300a01">
"I'm okay- Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ20");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
As I come down&, Clear starts to touch me again&.

The touch from his metallic hand is like nothing I've ever
felt before&. The feel of the hard metal slowly becomes 
more and more pleasant&.

Soon enough my hips go numb in pleasure&, and the pain 
gradually fades away&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001310a01">
"Ah&, ku&, ah&.&.&.Hah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵ＥＶ126", 126, -643, -124, "cg/ev/l/ev453クリアとH挿入_l.jpg");
	Move("絵ＥＶ126", 1000, -687, -178, Dxl3, false);
	Fade("絵ＥＶ126", 1000, 1000, null, true);
	Delete("絵ＥＶ124");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0401]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001320a04">
"Nn&.&.&.&.&.Aoba-san&, it feels so good inside you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0402]
Clear's voice is raspy&, words spilling out of his mouth&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1400,null,false);
}
I start to move in a way that causes Clear's dick to push 
deeper against the inner walls&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001330a04">
"Ah&, hah&.&.&.Ah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ127", 127, -694, -729, "cg/ev/l/ev453クリアとH挿入a_l.jpg");
	Zoom("絵ＥＶ127", 0, 1500, 1500, null, true);
	Request("絵ＥＶ127", Smoothing);

	Move("絵ＥＶ127", 1000, -626, -633, Dxl1, false);
	Fade("絵ＥＶ127", 1000, 1000, null, true);
	Delete("絵ＥＶ126");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
Clear takes his groping fingers off my cock&, and starts to rub my chest and stomach&.

Clear's touch causes electric shocks to run throughout my 
entire body&, and he looks so charming&.&.&.

It's a little late to say this&, but I feel so&.&.&. lewd&.

{
	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,600,0,1200,null,false);
	SetVolumeEX("SE*", 100, 0, null);
}
I'm even more turned on&, and I take his hand and put it in my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0412]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001340a04">
"&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001350a01">
"&.&.&.Fu&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
Without caring about all of the body fluids they're 
covered in&, I lick Clear's fingers&.

It feels different from a hand with skin with its metal 
touch&.

But I can't help but love it&, and carefully suck and lick 
them&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE02", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0421]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001360a04">
"Aoba-san!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0422]
Clear loudly calls out my name and pulls his hand out from my mouth&, and along with his other hand&, grabs my hips&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0423]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001370a01">
"&.&.&.? !! Ah&, Ahhhhh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0424]
He suddenly thrusts into me with such force that a loud 
moan escapes me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵ＥＶ129", 129, -310, -50, "cg/ev/l/ev453クリアとH挿入_l.jpg");
	Move("絵ＥＶ129", 500, -219, -33, Dxl3, false);
	Fade("絵ＥＶ129", 500, 1000, null, true);
	Delete("絵ＥＶ127");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0425]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001380a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ21");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001390a04">
"Ngh&.&.&.Ah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
Clear thrusts over and over while holding onto my hips&.

Goosebumps rise up on my skin to know that Clear is 
filling me to the brim&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ22");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0432]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001400a01">
"Ah&.&.&.Nghhh&.&.&.!"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001410a04">
"Uhn&.&.&.Gh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0433]
My mind goes blank&, and I look at Clear with his pained 
voice&.

Down below&.&.&. something like white water startles me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ130", 130, -844, -569, "cg/ev/l/ev453クリアとH挿入_l.jpg");
	Fade("絵ＥＶ130", 500, 1000, null, true);
	Delete("絵ＥＶ12*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
Clear's face warps with pain as parts of his skin&, and 
body itself&, start to peel and drop off&.

His face&, his chest&, his arms&, everywhere&.

Is he now&.&.&. breaking from the inside out?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0441]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001420a01">
"&.&.&.! Stop&, if you do that&, you'll&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ26");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0442]
Clear stops moving and grabs my arms&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ130", 500, -844, -422, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0443]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001430a04">
"I'm fine&.&.&. Continue- like this&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001440a01">
"But&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001450a04">
"I said it's fine!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0451]
His bitter voice pierces straight through my chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0452]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001460a04">
"Please don't stop&.&.&. I want to touch you until the end&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0453]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001470a04">
"I want to be touching Aoba-san&.&.&. So&.&.&. please&. Please
 don't treat me like this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0454]
Clear's expression turns serious and his voice sounds 
like he's about to cry&.

Drops of water appear in the corners of his eyes and run 
down his cheek&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0455]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001480a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
An indescribable feeling explodes in my chest&.&.&. And my 
vision goes blurry&.

It feels painfully hot from my eyes to my nose&.
Sobs start to escape from my throat&.

This is&.&.&.
Clear's last wish&.

That's why no matter what&.&.&.

Even if his body breaks to the point where there's no 
traces of him left&, I need to do this until the end&.

Clear pounds into me and I pound into him as well&.

So we never forget&.
So we never lose each other&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
That's what we can do for each other&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ131", 131, 0, -566, "cg/ev/l/ev453クリアとH挿入a_l.jpg");
	Move("絵ＥＶ131", 2000, -781, -480, Dxl1, false);
	Fade("絵ＥＶ131", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001490a01">
"Uhn&.&.&.Ah&.&.&.Fu!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0472]
The tears swell up&, and I try to hold back the pain&.

A smile floats to Clear's face&, and he matches my rhythm&. 

He's working as strongly as he can&, without caring how his body is falling apart&.

Even without me touching him&, Clear's face starts to fall 
apart&.

It's happening right in front of me&, but I can't stop it&.
I know there's no helping it&, but it hurts to realize how 
useless I am&.&.&. Before I know it&, I'm completely in tears&.

All I can feel is agony&. It's a prickling feeling&.&.&. and I can't help the sadness&.

My thoughts&.&.&. are everywhere and nowhere&, and my mind 
goes blank&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ131", 1000, -781, -265, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001500a01">
"Unghhh&.&.&.Ku- Fu!"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001510a04">
"&.&.&.Aoba-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0481]
Clear wipes my cheeks with his mechanical hand&. I grab and kiss it&.

With all the affection I have&.&.&.

Clear touches me all over&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0482]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001520a01">
"Ngh&.&.&.Fu&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001530a04">
"Hah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
I can't stop the tears even as we kiss&, and the senses in 
my nose and mouth drift away&.

But I still entwine our tongues together in a trance&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ131", 500, -781, -100, Dxl1, false);
	CreateTextureEX("絵ＥＶ132", 132, Center, Middle, "cg/ev/ev453クリアとH挿入a.jpg");
	Fade("絵ＥＶ132", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0491]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001540a01">
"Fu&.&.&.&.Unnngh&.&.&.Ah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0492]
Clear speeds up even more&, and tenderly feels my back and 
cock&.

That arouses me even more&, and I reach my limit&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreateTextureEX("絵ＥＶ140", 140, -352, 0, "cg/ev/l/ev453クリアとH挿入b_l.jpg");
	Move("絵ＥＶ140", 500, -423, -128, Dxl3, false);
	Fade("絵ＥＶ140", 500, 1000, null, true);
	Delete("絵ＥＶ13*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0493]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001550a01">
"Ah&, ahh&, hah&.&.&.&.Ugh&, ah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0494]
Lights flicker in front of my eyes&, and I let myself sink 
into the pleasure&.

But&.&.&. In the corner of my mind&, the sorrow and regret 
still lingers&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0495]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001560a04">
"&.&.&.Ah!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001570a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
Clear's expression changes and his breaths turn hoarse&, so he must be close to his climax too&.

I suck in Clear's cock&, and move my hips as vigorously as 
I can&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("絵ＥＶ141", 141, -861, -304, "cg/ev/l/ev453クリアとH挿入b_l.jpg");
	Move("絵ＥＶ141", 500, -780, -106, Dxl1, false);
	Fade("絵ＥＶ141", 500, 1000, null, true);
	Delete("絵ＥＶ140");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0501]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001580a01">
"Ngh&, ahhh&, I'm- gonna come&.&.&.!"


//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001590a04">
"&.&.&.! Aoba-san&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0502]
Unable to think of anything else&, I pull in Clear for one 
more deep kiss&.

{
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,800,null,false);
}
Clear responds by gripping onto me even tighter&.

Metal parts of Clear are all over my naked arms and thighs&. 

It'll be over soon&.

The end of it all&.&.&.
I want to stop it from happening&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ141", 500, -861, -304, Dxl3, false);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ22");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE03","se擬音_水_はねる06");
	MusicStart("SE03",0,400,0,1200,null,false);

	CreateTextureEX("絵ＥＶ142", 142, Center, Middle, "cg/ev/ev453クリアとH挿入b.jpg");
	Fade("絵ＥＶ142", 500, 1000, null, true);
	Delete("絵ＥＶ141");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001600a01">
"&.&.&.Guh&, ah&, Ngh&.&.&.&.Ah&, ahhhhh&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0511]
He pushes into me with even more force&, and I feel 
something flick on as my chest feels like it's suffocating&.
My mind goes completely white&.&.&.

A load of semen shoots into Clear's ever so strongly 
gripping hand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0512]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001610a01">
"Ungh&.&.&.&.Mn&."

{
	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,500,0,1000,null,false);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3001620a04">
"&.&.&.! Ku&.&.&.Ungh&, ah&.&.&.&.!"

After I'm done&, Clear lets out a small moan&, and his grip 
on my hips starts to shake&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ*", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0513]
A warm liquid covers my most sensitive areas&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	FadeDelete("絵ＥＶ*", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0514]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3001630a01">
"Hah&.&.&.&.&."

I'm exhausted from coming&.&.&. and I look at Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(1000);

	CreateSE("SE03","se人体_動作_キス01");
	MusicStart("SE03",0,500,0,1200,null,false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
I lightly kiss him&, and then kiss the two moles by his 
chin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4535h.nss"]

}
