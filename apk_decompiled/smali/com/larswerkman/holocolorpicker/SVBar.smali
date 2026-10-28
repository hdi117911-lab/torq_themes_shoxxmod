.class public Lcom/larswerkman/holocolorpicker/SVBar;
.super Landroid/view/View;
.source "SVBar.java"


# static fields
.field private static final STATE_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"

.field private static final STATE_SATURATION:Ljava/lang/String; = "saturation"

.field private static final STATE_VALUE:Ljava/lang/String; = "value"


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

.field private mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

.field private mPosToSVFactor:F

.field private mPreferredBarLength:I

.field private mSVToPosFactor:F

.field private shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    .line 127
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->init(Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->init(Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 141
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/holocolorpicker/SVBar;->init(Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method private calculateColor(I)V
    .locals 7
    .param p1, "x"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 388
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 389
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 391
    new-array v0, v6, [F

    .line 392
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 393
    aput v4, v0, v3

    .line 394
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPosToSVFactor:F

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v2, p1, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float v1, v4, v1

    aput v1, v0, v5

    .line 391
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 390
    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    if-le p1, v0, :cond_2

    .line 396
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 397
    new-array v0, v6, [F

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 398
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPosToSVFactor:F

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 399
    aput v4, v0, v5

    .line 397
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    goto :goto_0

    .line 400
    :cond_2
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    if-ne p1, v0, :cond_3

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    goto :goto_0

    .line 402
    :cond_3
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 403
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 146
    sget-object v3, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars:[I

    .line 145
    invoke-virtual {v2, p1, v3, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 151
    .local v1, "b":Landroid/content/res/Resources;
    sget v2, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_thickness:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 149
    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    .line 153
    sget v2, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 152
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    .line 154
    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPreferredBarLength:I

    .line 156
    const/4 v2, 0x2

    .line 157
    sget v3, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 155
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerRadius:I

    .line 159
    const/4 v2, 0x3

    .line 160
    sget v3, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_halo_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 158
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    .line 162
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    .line 165
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 167
    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 169
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    .line 170
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    .line 174
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    const v3, -0x7e0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    div-float v2, v5, v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPosToSVFactor:F

    .line 177
    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    div-float/2addr v2, v5

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    .line 179
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 251
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 252
    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    .line 251
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 254
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 255
    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    .line 254
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 183
    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPreferredBarLength:I

    .line 184
    iget v5, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    .line 183
    add-int v0, v4, v5

    .line 186
    .local v0, "intrinsicSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 187
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 190
    .local v3, "widthSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_0

    .line 191
    move v1, v3

    .line 198
    .local v1, "width":I
    :goto_0
    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    iput v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    .line 199
    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iget v5, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 200
    iget v5, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    .line 199
    invoke-virtual {p0, v4, v5}, Lcom/larswerkman/holocolorpicker/SVBar;->setMeasuredDimension(II)V

    .line 201
    return-void

    .line 192
    .end local v1    # "width":I
    :cond_0
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 193
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 194
    .restart local v1    # "width":I
    goto :goto_0

    .line 195
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
    .line 449
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 451
    .local v0, "savedState":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 452
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 454
    const-string v2, "color"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    .line 455
    const-string v2, "saturation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const-string v2, "saturation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/holocolorpicker/SVBar;->setSaturation(F)V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/holocolorpicker/SVBar;->setValue(F)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 431
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 433
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v1, "state":Landroid/os/Bundle;
    const-string v3, "parent"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 435
    const-string v3, "color"

    iget-object v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 436
    const/4 v3, 0x3

    new-array v0, v3, [F

    .line 437
    .local v0, "hsvColor":[F
    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-static {v3, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 438
    aget v3, v0, v5

    aget v4, v0, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 439
    const-string v3, "saturation"

    aget v4, v0, v5

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 444
    :goto_0
    return-object v1

    .line 441
    :cond_0
    const-string v3, "value"

    aget v4, v0, v6

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 206
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    .line 209
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 210
    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 211
    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 212
    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v5, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 209
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 215
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 217
    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 218
    const/4 v7, -0x1

    aput v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x2

    const/high16 v7, -0x1000000

    aput v7, v5, v6

    .line 219
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 216
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 229
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPosToSVFactor:F

    .line 230
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    .line 231
    const/4 v0, 0x3

    new-array v8, v0, [F

    .line 232
    .local v8, "hsvColor":[F
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-static {v0, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 233
    const/4 v0, 0x1

    aget v0, v8, v0

    const/4 v1, 0x2

    aget v1, v8, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 234
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    const/4 v1, 0x1

    aget v1, v8, v1

    mul-float/2addr v0, v1

    .line 235
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 234
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 241
    :goto_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 244
    :cond_0
    return-void

    .line 221
    .end local v8    # "hsvColor":[F
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 222
    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 223
    const/4 v6, 0x0

    .line 224
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 221
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    .line 225
    const v0, -0x7e0100

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_0

    .line 238
    .restart local v8    # "hsvColor":[F
    :cond_2
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    aget v2, v8, v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 239
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 238
    add-float/2addr v0, v1

    .line 239
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 238
    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 237
    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    goto :goto_1

    .line 222
    :array_0
    .array-data 4
        -0x1
        -0x7e0100
        -0x1000000
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 265
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return v3

    .line 267
    :pswitch_0
    iput-boolean v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mIsMovingPointer:Z

    .line 269
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 270
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 271
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 272
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/SVBar;->calculateColor(I)V

    .line 273
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    goto :goto_0

    .line 278
    :pswitch_1
    iget-boolean v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mIsMovingPointer:Z

    if-eqz v1, :cond_0

    .line 280
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 281
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 282
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 283
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/SVBar;->calculateColor(I)V

    .line 284
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 287
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    goto :goto_0

    .line 290
    :cond_2
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 291
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iput v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 292
    const/4 v1, -0x1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    .line 293
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 296
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 298
    :cond_3
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    goto/16 :goto_0

    .line 299
    :cond_4
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 300
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 301
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    .line 302
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v1, :cond_5

    .line 304
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 305
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 307
    :cond_5
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    goto/16 :goto_0

    .line 312
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mIsMovingPointer:Z

    goto/16 :goto_0

    .line 265
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
    .line 366
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mHSVColor:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 367
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 368
    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarThickness:I

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 369
    const/4 v7, -0x1

    aput v7, v5, v6

    const/4 v6, 0x1

    aput p1, v5, v6

    const/4 v6, 0x2

    const/high16 v7, -0x1000000

    aput v7, v5, v6

    const/4 v6, 0x0

    .line 370
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 367
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    .line 371
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 372
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->calculateColor(I)V

    .line 373
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 376
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    .line 379
    return-void
.end method

.method public setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V
    .locals 0
    .param p1, "picker"    # Lcom/larswerkman/holocolorpicker/ColorPicker;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 427
    return-void
.end method

.method public setSaturation(F)V
    .locals 2
    .param p1, "saturation"    # F

    .prologue
    .line 325
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    mul-float/2addr v0, p1

    .line 326
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 325
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 327
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->calculateColor(I)V

    .line 328
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 333
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    .line 336
    return-void
.end method

.method public setValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 345
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mSVToPosFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    .line 346
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarLength:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 345
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    .line 347
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->calculateColor(I)V

    .line 348
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 353
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    .line 356
    return-void
.end method
