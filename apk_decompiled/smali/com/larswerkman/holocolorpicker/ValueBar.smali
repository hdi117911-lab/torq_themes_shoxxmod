.class public Lcom/larswerkman/holocolorpicker/ValueBar;
.super Landroid/view/View;
.source "ValueBar.java"


# static fields
.field private static final STATE_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"

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

.field private mPosToSatFactor:F

.field private mPreferredBarLength:I

.field private mSatToPosFactor:F

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

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarRect:Landroid/graphics/RectF;

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    .line 126
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/larswerkman/holocolorpicker/ValueBar;->init(Landroid/util/AttributeSet;I)V

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

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarRect:Landroid/graphics/RectF;

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/larswerkman/holocolorpicker/ValueBar;->init(Landroid/util/AttributeSet;I)V

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

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarRect:Landroid/graphics/RectF;

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 140
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/holocolorpicker/ValueBar;->init(Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method private calculateColor(I)V
    .locals 5
    .param p1, "x"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 365
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    sub-int/2addr p1, v0

    .line 366
    if-gez p1, :cond_1

    .line 367
    const/4 p1, 0x0

    .line 371
    :cond_0
    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 372
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    aget v1, v1, v3

    aput v1, v0, v3

    const/4 v1, 0x2

    .line 373
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPosToSatFactor:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 371
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    .line 374
    return-void

    .line 368
    :cond_1
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    if-le p1, v0, :cond_0

    .line 369
    iget p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 145
    sget-object v3, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorBars:[I

    .line 144
    invoke-virtual {v2, p1, v3, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->getContext()Landroid/content/Context;

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

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    .line 152
    sget v2, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 151
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    .line 153
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPreferredBarLength:I

    .line 155
    const/4 v2, 0x2

    .line 156
    sget v3, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 154
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerRadius:I

    .line 158
    const/4 v2, 0x3

    .line 159
    sget v3, Lcom/larswerkman/holocolorpicker/R$dimen;->bar_pointer_halo_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 157
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    .line 161
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPaint:Landroid/graphics/Paint;

    .line 164
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 166
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 168
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    .line 169
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 172
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    .line 173
    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    const v3, -0x7e0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float v2, v2

    div-float v2, v5, v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPosToSatFactor:F

    .line 176
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mSatToPosFactor:F

    .line 177
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 250
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 251
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloPaint:Landroid/graphics/Paint;

    .line 250
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 253
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 254
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    .line 253
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 255
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 181
    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPreferredBarLength:I

    .line 182
    iget v5, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

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
    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    iput v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    .line 197
    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 198
    iget v5, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v5, v5, 0x2

    .line 197
    invoke-virtual {p0, v4, v5}, Lcom/larswerkman/holocolorpicker/ValueBar;->setMeasuredDimension(II)V

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
    .line 415
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 417
    .local v0, "savedState":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 418
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 420
    const-string v2, "color"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColor(I)V

    .line 421
    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/larswerkman/holocolorpicker/ValueBar;->setValue(F)V

    .line 422
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 400
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 402
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v1, "state":Landroid/os/Bundle;
    const-string v3, "parent"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 404
    const-string v3, "color"

    iget-object v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 406
    const/4 v3, 0x3

    new-array v0, v3, [F

    .line 407
    .local v0, "hsvColor":[F
    iget v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-static {v3, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 408
    const-string v3, "value"

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 410
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 204
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    .line 207
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 208
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 209
    iget v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 210
    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 207
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 213
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 215
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 216
    const/4 v2, 0x0

    .line 217
    iget v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 218
    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    int-to-float v4, v4

    .line 219
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xff

    iget-object v9, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    invoke-static {v7, v9}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, -0x1000000

    aput v7, v5, v6

    .line 220
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 214
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 230
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPosToSatFactor:F

    .line 231
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mSatToPosFactor:F

    .line 233
    const/4 v0, 0x3

    new-array v8, v0, [F

    .line 234
    .local v8, "hsvColor":[F
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-static {v0, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 236
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mSatToPosFactor:F

    const/4 v2, 0x2

    aget v2, v8, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 239
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 238
    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 237
    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 243
    :goto_1
    return-void

    .line 222
    .end local v8    # "hsvColor":[F
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 223
    iget v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    int-to-float v4, v4

    .line 224
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    .line 225
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 222
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    .line 226
    const v0, -0x7e0100

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_0

    .line 241
    .restart local v8    # "hsvColor":[F
    :cond_1
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    goto :goto_1

    .line 224
    :array_0
    .array-data 4
        -0x7e0100
        -0x1000000
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 259
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 264
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 314
    :cond_0
    :goto_0
    return v3

    .line 266
    :pswitch_0
    iput-boolean v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mIsMovingPointer:Z

    .line 268
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 269
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 270
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 271
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/ValueBar;->calculateColor(I)V

    .line 272
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-boolean v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mIsMovingPointer:Z

    if-eqz v1, :cond_0

    .line 279
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 280
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 281
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 282
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/ValueBar;->calculateColor(I)V

    .line 283
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 286
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    goto :goto_0

    .line 289
    :cond_2
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 290
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iput v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 291
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    .line 292
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v1, :cond_3

    .line 294
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 295
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 297
    :cond_3
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    goto/16 :goto_0

    .line 298
    :cond_4
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 299
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 300
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    .line 301
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v1, :cond_5

    .line 303
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 304
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 306
    :cond_5
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    goto/16 :goto_0

    .line 311
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mIsMovingPointer:Z

    goto/16 :goto_0

    .line 264
    nop

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
    .line 325
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mHSVColor:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 326
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 327
    iget v3, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarThickness:I

    int-to-float v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 328
    aput p1, v5, v6

    const/4 v6, 0x1

    const/high16 v7, -0x1000000

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 326
    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    .line 329
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 330
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/ValueBar;->calculateColor(I)V

    .line 331
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 334
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    .line 337
    return-void
.end method

.method public setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V
    .locals 0
    .param p1, "picker"    # Lcom/larswerkman/holocolorpicker/ColorPicker;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    .line 396
    return-void
.end method

.method public setValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 346
    .line 347
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarLength:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mSatToPosFactor:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    .line 348
    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerHaloRadius:I

    int-to-float v1, v1

    .line 347
    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 346
    iput v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    .line 349
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPosition:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/ValueBar;->calculateColor(I)V

    .line 350
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mBarPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 353
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mPicker:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ValueBar;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->changeOpacityBarColor(I)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->invalidate()V

    .line 356
    return-void
.end method
