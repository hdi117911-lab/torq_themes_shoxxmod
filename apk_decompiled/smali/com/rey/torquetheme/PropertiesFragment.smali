.class public Lcom/rey/torquetheme/PropertiesFragment;
.super Landroid/support/v4/app/Fragment;
.source "PropertiesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;


# static fields
.field private static final FONT_FILE:Ljava/lang/String; = "font.ttf"

.field private static final PROPERTIES_DIR:Ljava/lang/String; = ".torque/themeDir"

.field private static final PROPERTIES_FILE:Ljava/lang/String; = ".torque/themeDir/properties.txt"

.field private static final PROPERTY_DIAL_TICK_INNER_RADIUS:Ljava/lang/String; = "dialTickInnerRadius"

.field private static final PROPERTY_DIAL_TICK_OUTER_RADIUS:Ljava/lang/String; = "dialTickOuterRadius"

.field private static final PROPERTY_GLOBAL_DIAL_START_ANGLE:Ljava/lang/String; = "globalDialStartAngle"

.field private static final PROPERTY_GLOBAL_DIAL_STOP_ANGLE:Ljava/lang/String; = "globalDialStopAngle"

.field private static final PROPERTY_GLOBAL_FONT_SCALE:Ljava/lang/String; = "globalFontScale"

.field private static final PROPERTY_GLOBAL_HIDE_TICK:Ljava/lang/String; = "globalHideTicks"

.field private static final PROPERTY_GLOBAL_TEXT_RADIUS:Ljava/lang/String; = "globalTextRadius"

.field private static final PROPERTY_INDICATOR_COLOR:Ljava/lang/String; = "displayIndicatorColour"

.field private static final PROPERTY_TEXT_COLOR:Ljava/lang/String; = "displayTextValueColour"

.field private static final PROPERTY_TEXT_TITLE_COLOR:Ljava/lang/String; = "displayTextTitleColour"

.field private static final PROPERTY_TICK_COLOR:Ljava/lang/String; = "displayTickColour"

.field public static final TAG:Ljava/lang/String;

.field public static instance:Lcom/rey/torquetheme/PropertiesFragment;


# instance fields
.field private activity:Lcom/rey/torquetheme/MainActivity;

.field private angle_start:I

.field private angle_stop:I

.field private bt_font:Landroid/widget/Button;

.field private bt_save:Landroid/widget/Button;

.field private cb_hide_tick:Landroid/widget/CheckBox;

.field private color_indicator:I

.field private color_text:I

.field private color_text_title:I

.field private color_tick:I

.field private et_font_scale:Landroid/widget/EditText;

.field private et_start_angle:Landroid/widget/EditText;

.field private et_stop_angle:Landroid/widget/EditText;

.field private et_text_radius:Landroid/widget/EditText;

.field private et_tick_inner_radius:Landroid/widget/EditText;

.field private et_tick_outer_radius:Landroid/widget/EditText;

.field private font_scale:F

.field private hide_tick:Z

.field private iv_indicator_color:Landroid/widget/ImageView;

.field private iv_text_color:Landroid/widget/ImageView;

.field private iv_text_title_color:Landroid/widget/ImageView;

.field private iv_tick_color:Landroid/widget/ImageView;

.field private radius_inner:F

.field private radius_outer:F

.field private text_radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/rey/torquetheme/PropertiesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rey/torquetheme/PropertiesFragment;->TAG:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 71
    iput v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    .line 72
    iput v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    .line 73
    iput v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_inner:F

    .line 74
    iput v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_outer:F

    .line 75
    iput v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->font_scale:F

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->hide_tick:Z

    .line 77
    iput v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->text_radius:F

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/rey/torquetheme/PropertiesFragment;Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/rey/torquetheme/PropertiesFragment;->hide_tick:Z

    return-void
.end method

.method private bt_fontClicked()V
    .locals 4

    .prologue
    .line 238
    invoke-static {}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->createGetContentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 239
    .local v0, "getContentIntent":Landroid/content/Intent;
    const-string v2, "Select font file"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 240
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/rey/torquetheme/PropertiesFragment;->activity:Lcom/rey/torquetheme/MainActivity;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v1, v3}, Lcom/rey/torquetheme/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    return-void
.end method

.method private bt_saveClicked()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method private loadBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v1, "="

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "temp":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private loadColor(Ljava/lang/String;)I
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    .line 183
    const-string v1, "#"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "temp":[Ljava/lang/String;
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 185
    aget-object v1, v0, v3

    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 187
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FF"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0
.end method

.method private loadFloat(Ljava/lang/String;)F
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v1, "="

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "temp":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method private loadInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v1, "="

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "temp":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static newInstance()Lcom/rey/torquetheme/PropertiesFragment;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/rey/torquetheme/PropertiesFragment;

    invoke-direct {v0}, Lcom/rey/torquetheme/PropertiesFragment;-><init>()V

    .line 86
    .local v0, "fragment":Lcom/rey/torquetheme/PropertiesFragment;
    return-object v0
.end method

.method private saveProperties()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_start_angle:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "text":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 246
    const/4 v9, -0x1

    iput v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    .line 270
    :goto_0
    iget-object v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_stop_angle:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 271
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 272
    const/4 v9, -0x1

    iput v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    .line 296
    :goto_1
    iget-object v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_tick_inner_radius:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 297
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 298
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_inner:F

    .line 322
    :goto_2
    iget-object v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_tick_outer_radius:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 323
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 324
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_outer:F

    .line 348
    :goto_3
    iget-object v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_font_scale:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 349
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 350
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->font_scale:F

    .line 374
    :goto_4
    iget-object v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_text_radius:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 375
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 376
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->text_radius:F

    .line 400
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v6, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, ".torque/themeDir/properties.txt"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 403
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 405
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_1b

    .line 423
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 426
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 427
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 430
    :cond_2
    const-string v9, "displayTextValueColour"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text:I

    invoke-direct {p0, v10}, Lcom/rey/torquetheme/PropertiesFragment;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v9, "displayTextTitleColour"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text_title:I

    invoke-direct {p0, v10}, Lcom/rey/torquetheme/PropertiesFragment;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v9, "displayTickColour"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_tick:I

    invoke-direct {p0, v10}, Lcom/rey/torquetheme/PropertiesFragment;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v9, "displayIndicatorColour"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_indicator:I

    invoke-direct {p0, v10}, Lcom/rey/torquetheme/PropertiesFragment;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_inner:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_3

    .line 435
    const-string v9, "dialTickInnerRadius"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_inner:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_3
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_outer:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    .line 437
    const-string v9, "dialTickOuterRadius"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_outer:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_4
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->font_scale:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_5

    .line 439
    const-string v9, "globalFontScale"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->font_scale:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_5
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->text_radius:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_6

    .line 441
    const-string v9, "globalTextRadius"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->text_radius:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_6
    const-string v9, "globalHideTicks"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->hide_tick:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    if-ltz v9, :cond_7

    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    const/16 v10, 0xb4

    if-gt v9, v10, :cond_7

    .line 444
    const-string v9, "globalDialStartAngle"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_7
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    if-ltz v9, :cond_8

    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    const/16 v10, 0xb4

    if-gt v9, v10, :cond_8

    .line 446
    const-string v9, "globalDialStopAngle"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_8
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 451
    .local v3, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 453
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 455
    invoke-virtual {p0}, Lcom/rey/torquetheme/PropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-string v10, "Properties saved! Please restart Torque app!"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 456
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_7
    return-void

    .line 248
    :cond_9
    const/4 v0, -0x1

    .line 250
    .local v0, "angle":I
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 254
    :goto_8
    if-ltz v0, :cond_a

    const/16 v9, 0xb4

    if-gt v0, v9, :cond_a

    .line 255
    iput v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    goto/16 :goto_0

    .line 257
    :cond_a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rey/torquetheme/PropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v2, "buidler":Landroid/app/AlertDialog$Builder;
    const v9, 0x1080027

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 259
    const-string v10, "Start angle"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 260
    const-string v10, "Please enter a value between 0~180 !"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 261
    const-string v10, "OK"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 262
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 263
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 265
    iget-object v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_start_angle:Landroid/widget/EditText;

    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    const/4 v11, -0x1

    if-ne v9, v11, :cond_b

    const-string v9, ""

    :goto_9
    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    .line 274
    .end local v0    # "angle":I
    .end local v2    # "buidler":Landroid/app/AlertDialog$Builder;
    :cond_c
    const/4 v0, -0x1

    .line 276
    .restart local v0    # "angle":I
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 280
    :goto_a
    if-ltz v0, :cond_d

    const/16 v9, 0xb4

    if-gt v0, v9, :cond_d

    .line 281
    iput v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    goto/16 :goto_1

    .line 283
    :cond_d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rey/torquetheme/PropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    .restart local v2    # "buidler":Landroid/app/AlertDialog$Builder;
    const v9, 0x1080027

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 285
    const-string v10, "Stop angle"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 286
    const-string v10, "Please enter a value between 0~180 !"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 287
    const-string v10, "OK"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 288
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 289
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 291
    iget-object v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_stop_angle:Landroid/widget/EditText;

    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    const/4 v11, -0x1

    if-ne v9, v11, :cond_e

    const-string v9, ""

    :goto_b
    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_e
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    .line 300
    .end local v0    # "angle":I
    .end local v2    # "buidler":Landroid/app/AlertDialog$Builder;
    :cond_f
    const/high16 v8, -0x40800000    # -1.0f

    .line 302
    .local v8, "value":F
    :try_start_2
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    .line 306
    :goto_c
    float-to-double v9, v8

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_10

    float-to-double v9, v8

    const-wide v11, 0x3ff999999999999aL    # 1.6

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_10

    .line 307
    iput v8, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_inner:F

    goto/16 :goto_2

    .line 309
    :cond_10
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rey/torquetheme/PropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 310
    .restart local v2    # "buidler":Landroid/app/AlertDialog$Builder;
    const v9, 0x1080027

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 311
    const-string v10, "Tick inner radius"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 312
    const-string v10, "Please enter a value between 0.5~1.6!"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 313
    const-string v10, "OK"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 314
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 315
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 317
    iget-object v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_tick_inner_radius:Landroid/widget/EditText;

    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_inner:F

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v9, v9, v11

    if-nez v9, :cond_11

    const-string v9, ""

    :goto_d
    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_11
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_inner:F

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    .line 326
    .end local v2    # "buidler":Landroid/app/AlertDialog$Builder;
    .end local v8    # "value":F
    :cond_12
    const/high16 v8, -0x40800000    # -1.0f

    .line 328
    .restart local v8    # "value":F
    :try_start_3
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    .line 332
    :goto_e
    float-to-double v9, v8

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_13

    float-to-double v9, v8

    const-wide v11, 0x3ff999999999999aL    # 1.6

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_13

    .line 333
    iput v8, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_outer:F

    goto/16 :goto_3

    .line 335
    :cond_13
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rey/torquetheme/PropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    .restart local v2    # "buidler":Landroid/app/AlertDialog$Builder;
    const v9, 0x1080027

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 337
    const-string v10, "Tick outer radius"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 338
    const-string v10, "Please enter a value between 0.5~1.6!"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 339
    const-string v10, "OK"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 340
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 341
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 343
    iget-object v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_tick_outer_radius:Landroid/widget/EditText;

    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_outer:F

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v9, v9, v11

    if-nez v9, :cond_14

    const-string v9, ""

    :goto_f
    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_14
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_outer:F

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    goto :goto_f

    .line 352
    .end local v2    # "buidler":Landroid/app/AlertDialog$Builder;
    .end local v8    # "value":F
    :cond_15
    const/high16 v8, -0x40800000    # -1.0f

    .line 354
    .restart local v8    # "value":F
    :try_start_4
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v8

    .line 358
    :goto_10
    float-to-double v9, v8

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_16

    float-to-double v9, v8

    const-wide v11, 0x3ff999999999999aL    # 1.6

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_16

    .line 359
    iput v8, p0, Lcom/rey/torquetheme/PropertiesFragment;->font_scale:F

    goto/16 :goto_4

    .line 361
    :cond_16
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rey/torquetheme/PropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    .restart local v2    # "buidler":Landroid/app/AlertDialog$Builder;
    const v9, 0x1080027

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 363
    const-string v10, "Font scale"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 364
    const-string v10, "Please enter a value between 0.5~1.6!"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 365
    const-string v10, "OK"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 366
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 367
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 369
    iget-object v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_font_scale:Landroid/widget/EditText;

    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->font_scale:F

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v9, v9, v11

    if-nez v9, :cond_17

    const-string v9, ""

    :goto_11
    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_17
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->font_scale:F

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    .line 378
    .end local v2    # "buidler":Landroid/app/AlertDialog$Builder;
    .end local v8    # "value":F
    :cond_18
    const/high16 v8, -0x40800000    # -1.0f

    .line 380
    .restart local v8    # "value":F
    :try_start_5
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v8

    .line 384
    :goto_12
    float-to-double v9, v8

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_19

    float-to-double v9, v8

    const-wide v11, 0x3ff999999999999aL    # 1.6

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_19

    .line 385
    iput v8, p0, Lcom/rey/torquetheme/PropertiesFragment;->text_radius:F

    goto/16 :goto_5

    .line 387
    :cond_19
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rey/torquetheme/PropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    .restart local v2    # "buidler":Landroid/app/AlertDialog$Builder;
    const v9, 0x1080027

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 389
    const-string v10, "Text radius"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 390
    const-string v10, "Please enter a value between 0.5~1.6!"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 391
    const-string v10, "OK"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 392
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 393
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 395
    iget-object v10, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_text_radius:Landroid/widget/EditText;

    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->text_radius:F

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v9, v9, v11

    if-nez v9, :cond_1a

    const-string v9, ""

    :goto_13
    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_1a
    iget v9, p0, Lcom/rey/torquetheme/PropertiesFragment;->text_radius:F

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    goto :goto_13

    .line 406
    .end local v2    # "buidler":Landroid/app/AlertDialog$Builder;
    .end local v8    # "value":F
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1b
    const-string v9, "displayTextValueColour"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 407
    const-string v9, "displayTextTitleColour"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 408
    const-string v9, "displayTickColour"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 409
    const-string v9, "displayIndicatorColour"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 410
    const-string v9, "dialTickInnerRadius"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 411
    const-string v9, "dialTickOuterRadius"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 412
    const-string v9, "globalFontScale"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 413
    const-string v9, "globalTextRadius"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 414
    const-string v9, "globalHideTicks"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 415
    const-string v9, "globalDialStartAngle"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 416
    const-string v9, "globalDialStopAngle"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 420
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 252
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "angle":I
    :catch_0
    move-exception v9

    goto/16 :goto_8

    .line 278
    :catch_1
    move-exception v9

    goto/16 :goto_a

    .line 304
    .end local v0    # "angle":I
    .restart local v8    # "value":F
    :catch_2
    move-exception v9

    goto/16 :goto_c

    .line 330
    :catch_3
    move-exception v9

    goto/16 :goto_e

    .line 356
    :catch_4
    move-exception v9

    goto/16 :goto_10

    .line 382
    :catch_5
    move-exception v9

    goto/16 :goto_12
.end method

.method private toHexString(I)Ljava/lang/String;
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 459
    const-string v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    and-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public confirm(Lcom/rey/torquetheme/ColorDialogFragment;Z)V
    .locals 3
    .param p1, "dialog"    # Lcom/rey/torquetheme/ColorDialogFragment;
    .param p2, "yes"    # Z

    .prologue
    .line 473
    if-nez p2, :cond_0

    .line 495
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-virtual {p1}, Lcom/rey/torquetheme/ColorDialogFragment;->getDialogId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 478
    :pswitch_0
    invoke-virtual {p1}, Lcom/rey/torquetheme/ColorDialogFragment;->getColor()I

    move-result v0

    iput v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text:I

    .line 479
    iget-object v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_text_color:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 482
    :pswitch_1
    invoke-virtual {p1}, Lcom/rey/torquetheme/ColorDialogFragment;->getColor()I

    move-result v0

    iput v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text_title:I

    .line 483
    iget-object v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_text_title_color:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text_title:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 486
    :pswitch_2
    invoke-virtual {p1}, Lcom/rey/torquetheme/ColorDialogFragment;->getColor()I

    move-result v0

    iput v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_tick:I

    .line 487
    iget-object v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_tick_color:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_tick:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 490
    :pswitch_3
    invoke-virtual {p1}, Lcom/rey/torquetheme/ColorDialogFragment;->getColor()I

    move-result v0

    iput v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_indicator:I

    .line 491
    iget-object v0, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_indicator_color:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_indicator:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x7f080017
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public loadProperties()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0xb4

    const/4 v6, 0x0

    .line 129
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, ".torque/themeDir/properties.txt"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 161
    iget-object v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_text_color:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_text_title_color:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text_title:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_tick_color:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_tick:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_indicator_color:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_indicator:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_inner:F

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_tick_inner_radius:Landroid/widget/EditText;

    iget v4, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_inner:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_2
    iget v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_outer:F

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_3

    .line 168
    iget-object v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_tick_outer_radius:Landroid/widget/EditText;

    iget v4, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_outer:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_3
    iget v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->font_scale:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    .line 170
    iget-object v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_font_scale:Landroid/widget/EditText;

    iget v4, p0, Lcom/rey/torquetheme/PropertiesFragment;->font_scale:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_4
    iget v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->text_radius:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 172
    iget-object v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_text_radius:Landroid/widget/EditText;

    iget v4, p0, Lcom/rey/torquetheme/PropertiesFragment;->text_radius:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_5
    iget-object v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->cb_hide_tick:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/rey/torquetheme/PropertiesFragment;->hide_tick:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    iget v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    if-gt v3, v7, :cond_6

    .line 175
    iget-object v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_start_angle:Landroid/widget/EditText;

    iget v4, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_6
    iget v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    if-ltz v3, :cond_7

    iget v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    if-gt v3, v7, :cond_7

    .line 177
    iget-object v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_stop_angle:Landroid/widget/EditText;

    iget v4, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_0

    .line 136
    :cond_8
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    const-string v3, "displayTextValueColour"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 138
    invoke-direct {p0, v2}, Lcom/rey/torquetheme/PropertiesFragment;->loadColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text:I

    goto/16 :goto_1

    .line 139
    :cond_9
    const-string v3, "displayTextTitleColour"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 140
    invoke-direct {p0, v2}, Lcom/rey/torquetheme/PropertiesFragment;->loadColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text_title:I

    goto/16 :goto_1

    .line 141
    :cond_a
    const-string v3, "displayTickColour"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 142
    invoke-direct {p0, v2}, Lcom/rey/torquetheme/PropertiesFragment;->loadColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_tick:I

    goto/16 :goto_1

    .line 143
    :cond_b
    const-string v3, "displayIndicatorColour"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 144
    invoke-direct {p0, v2}, Lcom/rey/torquetheme/PropertiesFragment;->loadColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_indicator:I

    goto/16 :goto_1

    .line 145
    :cond_c
    const-string v3, "dialTickInnerRadius"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 146
    invoke-direct {p0, v2}, Lcom/rey/torquetheme/PropertiesFragment;->loadFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_inner:F

    goto/16 :goto_1

    .line 147
    :cond_d
    const-string v3, "dialTickOuterRadius"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 148
    invoke-direct {p0, v2}, Lcom/rey/torquetheme/PropertiesFragment;->loadFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->radius_outer:F

    goto/16 :goto_1

    .line 149
    :cond_e
    const-string v3, "globalFontScale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 150
    invoke-direct {p0, v2}, Lcom/rey/torquetheme/PropertiesFragment;->loadFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->font_scale:F

    goto/16 :goto_1

    .line 151
    :cond_f
    const-string v3, "globalTextRadius"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 152
    invoke-direct {p0, v2}, Lcom/rey/torquetheme/PropertiesFragment;->loadFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->text_radius:F

    goto/16 :goto_1

    .line 153
    :cond_10
    const-string v3, "globalHideTicks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 154
    invoke-direct {p0, v2}, Lcom/rey/torquetheme/PropertiesFragment;->loadBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->hide_tick:Z

    goto/16 :goto_1

    .line 155
    :cond_11
    const-string v3, "globalDialStartAngle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 156
    invoke-direct {p0, v2}, Lcom/rey/torquetheme/PropertiesFragment;->loadInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_start:I

    goto/16 :goto_1

    .line 157
    :cond_12
    const-string v3, "globalDialStopAngle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    invoke-direct {p0, v2}, Lcom/rey/torquetheme/PropertiesFragment;->loadInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/rey/torquetheme/PropertiesFragment;->angle_stop:I

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    return-void

    .line 209
    :pswitch_1
    invoke-direct {p0}, Lcom/rey/torquetheme/PropertiesFragment;->bt_saveClicked()V

    goto :goto_0

    .line 212
    :pswitch_2
    invoke-direct {p0}, Lcom/rey/torquetheme/PropertiesFragment;->bt_fontClicked()V

    goto :goto_0

    .line 215
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "Please select a color"

    iget v2, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text:I

    invoke-virtual {p0, v0, v1, v2, p0}, Lcom/rey/torquetheme/PropertiesFragment;->showColorDialog(ILjava/lang/String;ILcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;)V

    goto :goto_0

    .line 218
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "Please select a color"

    iget v2, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_text_title:I

    invoke-virtual {p0, v0, v1, v2, p0}, Lcom/rey/torquetheme/PropertiesFragment;->showColorDialog(ILjava/lang/String;ILcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;)V

    goto :goto_0

    .line 221
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "Please select a color"

    iget v2, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_tick:I

    invoke-virtual {p0, v0, v1, v2, p0}, Lcom/rey/torquetheme/PropertiesFragment;->showColorDialog(ILjava/lang/String;ILcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;)V

    goto :goto_0

    .line 224
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "Please select a color"

    iget v2, p0, Lcom/rey/torquetheme/PropertiesFragment;->color_indicator:I

    invoke-virtual {p0, v0, v1, v2, p0}, Lcom/rey/torquetheme/PropertiesFragment;->showColorDialog(ILjava/lang/String;ILcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;)V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x7f080016
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/rey/torquetheme/PropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/rey/torquetheme/MainActivity;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->activity:Lcom/rey/torquetheme/MainActivity;

    .line 95
    sput-object p0, Lcom/rey/torquetheme/PropertiesFragment;->instance:Lcom/rey/torquetheme/PropertiesFragment;

    .line 97
    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_text_color:Landroid/widget/ImageView;

    .line 98
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_text_title_color:Landroid/widget/ImageView;

    .line 99
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_tick_color:Landroid/widget/ImageView;

    .line 100
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_indicator_color:Landroid/widget/ImageView;

    .line 101
    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_tick_inner_radius:Landroid/widget/EditText;

    .line 102
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_tick_outer_radius:Landroid/widget/EditText;

    .line 103
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_font_scale:Landroid/widget/EditText;

    .line 104
    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_text_radius:Landroid/widget/EditText;

    .line 105
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->cb_hide_tick:Landroid/widget/CheckBox;

    .line 106
    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_start_angle:Landroid/widget/EditText;

    .line 107
    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->et_stop_angle:Landroid/widget/EditText;

    .line 108
    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->bt_save:Landroid/widget/Button;

    .line 109
    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->bt_font:Landroid/widget/Button;

    .line 111
    iget-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->bt_save:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->bt_font:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_text_color:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_text_title_color:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_tick_color:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->iv_indicator_color:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/rey/torquetheme/PropertiesFragment;->cb_hide_tick:Landroid/widget/CheckBox;

    new-instance v2, Lcom/rey/torquetheme/PropertiesFragment$1;

    invoke-direct {v2, p0}, Lcom/rey/torquetheme/PropertiesFragment$1;-><init>(Lcom/rey/torquetheme/PropertiesFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    return-object v0
.end method

.method public setFont(Ljava/io/File;)Z
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 499
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 501
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, ".torque/themeDir"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 502
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 503
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 505
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "font.ttf"

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 506
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 508
    .local v0, "buffer":[B
    :goto_0
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .local v5, "length":I
    if-gtz v5, :cond_1

    .line 511
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 512
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 513
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 514
    const/4 v6, 0x1

    .line 517
    .end local v0    # "buffer":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "folder":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "length":I
    :goto_1
    return v6

    .line 509
    .restart local v0    # "buffer":[B
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "folder":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "length":I
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    .end local v0    # "buffer":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "folder":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "length":I
    :catch_0
    move-exception v1

    .line 517
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public showColorDialog(ILjava/lang/String;ILcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "listener"    # Lcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/rey/torquetheme/PropertiesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 465
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {p1, p2, p3}, Lcom/rey/torquetheme/ColorDialogFragment;->newInstance(ILjava/lang/String;I)Lcom/rey/torquetheme/ColorDialogFragment;

    move-result-object v0

    .line 466
    .local v0, "dialog":Lcom/rey/torquetheme/ColorDialogFragment;
    invoke-virtual {v0, p4}, Lcom/rey/torquetheme/ColorDialogFragment;->setListener(Lcom/rey/torquetheme/ColorDialogFragment$ConfirmListener;)V

    .line 467
    sget-object v2, Lcom/rey/torquetheme/ColorDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 468
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 469
    return-void
.end method
