.class public Lcom/larswerkman/holocolorpicker/OpacityBar;
.super Landroid/view/View;
.source "OpacityBar.java"


# static fields
.field private static final STATE_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_OPACITY:Ljava/lang/String; = "opacity"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"


# instance fields
.field private mBarLength:I

.field private mBarPaint:Landroid/graphics/Paint;

.field private mBarPointerHaloPaint:Landroid/graphics/Paint;

.field private mBarPointerHaloRadius:I

.field private mBarPointerPaint:Landroid/graphics/Paint;

.field private mBarPointerPosition:I

.field private mBarPointerRadius:I

.field private mBarRect:Landroid/graphics/RectF;

.field private mBarThickness:I

.field private mColor:I

.field private mHSVColor:[F

.field private mIsMovingPointer:Z

.field private mOpacToPosFactor:F

.field private mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

.field private mPosToOpacFactor:F

.field private mPreferredBarLength:I

.field private shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    .line 126
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->init(Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->init(Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 140
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/holocolorpicker/OpacityBar;->init(Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method private calculateColor(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 369
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    sub-int/2addr p1, v0

    .line 370
    if-gez p1, :cond_2

    .line 371
    const/4 p1, 0x0

    .line 377
    :cond_0
    :goto_0
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPosToOpacFactor:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    .line 376
    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    .line 379
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_3

    .line 380
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    .line 384
    :cond_1
    :goto_1
    return-void

    .line 372
    :cond_2
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    if-le p1, v0, :cond_0

    .line 373
    iget p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    goto :goto_0

    .line 381
    :cond_3
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    goto :goto_1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    const/4 v4, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 145
    sget-object v3, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars:[I

    .line 144
    invoke-virtual {v2, p1, v3, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 150
    .local v1, "b":Landroid/content/res/Resources;
    sget v2, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_thickness:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 148
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    .line 152
    sget v2, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 151
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    .line 153
    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iput v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPreferredBarLength:I

    .line 155
    const/4 v2, 0x2

    .line 156
    sget v3, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 154
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerRadius:I

    .line 158
    const/4 v2, 0x3

    .line 159
    sget v3, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_halo_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 157
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    .line 161
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    .line 164
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 166
    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 168
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    .line 169
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 172
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    .line 173
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    const v3, -0x7e0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    int-to-float v2, v2

    div-float v2, v5, v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPosToOpacFactor:F

    .line 176
    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOpacToPosFactor:F

    .line 177
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    .line 352
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPosToOpacFactor:F

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    iget v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 353
    .local v0, "opacity":I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 354
    const/4 v0, 0x0

    .line 358
    .end local v0    # "opacity":I
    :cond_0
    :goto_0
    return v0

    .line 355
    .restart local v0    # "opacity":I
    :cond_1
    const/16 v1, 0xfa

    if-le v0, v1, :cond_0

    .line 356
    const/16 v0, 0xff

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 242
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 243
    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    .line 242
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 246
    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    .line 245
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 247
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 181
    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPreferredBarLength:I

    .line 182
    iget v5, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    .line 181
    add-int v0, v4, v5

    .line 184
    .local v0, "intrinsicSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 185
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 188
    .local v3, "widthSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_0

    .line 189
    move v1, v3

    .line 196
    .local v1, "width":I
    :goto_0
    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    iput v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    .line 197
    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v5, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 198
    iget v5, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    .line 197
    invoke-virtual {p0, v4, v5}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setMeasuredDimension(II)V

    .line 199
    return-void

    .line 190
    .end local v1    # "width":I
    :cond_0
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 191
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 192
    .restart local v1    # "width":I
    goto :goto_0

    .line 193
    .end local v1    # "width":I
    :cond_1
    move v1, v0

    .restart local v1    # "width":I
    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 422
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 424
    .local v0, "savedState":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 425
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 427
    const-string v2, "color"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColor(I)V

    .line 428
    const-string v2, "opacity"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setOpacity(I)V

    .line 429
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 410
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 412
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v0, "state":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 414
    const-string v2, "color"

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 415
    const-string v2, "opacity"

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->getOpacity()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v10, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 204
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    .line 207
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 208
    iget v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 209
    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v5, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 210
    iget v5, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v7, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    int-to-float v5, v5

    .line 207
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 213
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 215
    iget v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    int-to-float v4, v4

    new-array v5, v9, [I

    .line 216
    iget-object v7, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v8, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    aput v7, v5, v8

    const/4 v7, 0x1

    .line 217
    const/16 v8, 0xff

    iget-object v9, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v8, v9}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    aput v8, v5, v7

    .line 218
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 214
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 227
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    int-to-float v0, v0

    div-float v0, v10, v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPosToOpacFactor:F

    .line 228
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    int-to-float v0, v0

    div-float/2addr v0, v10

    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOpacToPosFactor:F

    .line 229
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOpacToPosFactor:F

    .line 231
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 230
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 231
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v0, v1

    .line 230
    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 235
    :goto_1
    return-void

    .line 220
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 221
    iget v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    int-to-float v4, v4

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    .line 222
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 220
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    .line 223
    const v0, -0x7e0100

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_0

    .line 233
    :cond_1
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    goto :goto_1

    .line 221
    :array_0
    .array-data 4
        0x81ff00
        -0x7e0100
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 251
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 256
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    return v3

    .line 258
    :pswitch_0
    iput-boolean v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mIsMovingPointer:Z

    .line 260
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 261
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 262
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 263
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->calculateColor(I)V

    .line 264
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-boolean v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mIsMovingPointer:Z

    if-eqz v1, :cond_0

    .line 271
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 272
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 273
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 274
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->calculateColor(I)V

    .line 275
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    goto :goto_0

    .line 280
    :cond_2
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 281
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iput v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 282
    iput v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    .line 283
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 287
    :cond_3
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    goto/16 :goto_0

    .line 288
    :cond_4
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 289
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 290
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    .line 291
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v1, :cond_5

    .line 293
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 295
    :cond_5
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    goto/16 :goto_0

    .line 300
    :pswitch_2
    iput-boolean v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mIsMovingPointer:Z

    goto/16 :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    const/4 v7, 0x0

    .line 314
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 315
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 316
    iget v3, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarThickness:I

    int-to-float v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 317
    iget-object v6, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mHSVColor:[F

    invoke-static {v7, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    aput v6, v5, v7

    const/4 v6, 0x1

    aput p1, v5, v6

    const/4 v6, 0x0

    .line 318
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 315
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    .line 319
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 320
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->calculateColor(I)V

    .line 321
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    .line 326
    return-void
.end method

.method public setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V
    .locals 0
    .param p1, "picker"    # Lcom/larswerkman/holocolorpicker/ColorPicker;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 406
    return-void
.end method

.method public setOpacity(I)V
    .locals 2
    .param p1, "opacity"    # I

    .prologue
    .line 335
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mOpacToPosFactor:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 336
    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerHaloRadius:I

    add-int/2addr v0, v1

    .line 335
    iput v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    .line 337
    iget v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->calculateColor(I)V

    .line 338
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/OpacityBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->invalidate()V

    .line 343
    return-void
.end method
