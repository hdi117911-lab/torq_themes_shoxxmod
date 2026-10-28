.class public Lcom/larswerkman/holocolorpicker/ColorPicker;
.super Landroid/view/View;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final STATE_ANGLE:Ljava/lang/String; = "angle"

.field private static final STATE_OLD_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"


# instance fields
.field private mAngle:F

.field private mCenterHaloPaint:Landroid/graphics/Paint;

.field private mCenterNewColor:I

.field private mCenterNewPaint:Landroid/graphics/Paint;

.field private mCenterOldColor:I

.field private mCenterOldPaint:Landroid/graphics/Paint;

.field private mCenterRectangle:Landroid/graphics/RectF;

.field private mColor:I

.field private mColorCenterHaloRadius:I

.field private mColorCenterRadius:I

.field private mColorPointerHaloRadius:I

.field private mColorPointerRadius:I

.field private mColorWheelPaint:Landroid/graphics/Paint;

.field private mColorWheelRadius:I

.field private mColorWheelRectangle:Landroid/graphics/RectF;

.field private mColorWheelThickness:I

.field private mHSV:[F

.field private mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

.field private mPointerColor:Landroid/graphics/Paint;

.field private mPointerHaloPaint:Landroid/graphics/Paint;

.field private mPreferredColorCenterHaloRadius:I

.field private mPreferredColorCenterRadius:I

.field private mPreferredColorWheelRadius:I

.field private mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

.field private mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

.field private mTranslationOffset:F

.field private mUserIsMovingPointer:Z

.field private mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

.field private onColorChangedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    .line 61
    return-void

    .line 60
    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 217
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    .line 127
    iput-boolean v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 189
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    .line 194
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    .line 199
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    .line 204
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    .line 209
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    .line 218
    invoke-direct {p0, v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    .line 127
    iput-boolean v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 189
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    .line 194
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    .line 199
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    .line 204
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    .line 209
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    .line 223
    invoke-direct {p0, p2, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 189
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    .line 194
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    .line 199
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    .line 204
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    .line 209
    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    .line 228
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/holocolorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    .line 229
    return-void
.end method

.method private ave(IIF)I
    .locals 1
    .param p1, "s"    # I
    .param p2, "d"    # I
    .param p3, "p"    # F

    .prologue
    .line 394
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private calculateColor(F)I
    .locals 13
    .param p1, "angle"    # F

    .prologue
    .line 407
    float-to-double v9, p1

    const-wide v11, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v9, v11

    double-to-float v8, v9

    .line 408
    .local v8, "unit":F
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    .line 409
    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    .line 412
    :cond_0
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_1

    .line 413
    sget-object v9, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    iput v9, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    .line 414
    sget-object v9, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    .line 433
    :goto_0
    return v9

    .line 416
    :cond_1
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_2

    .line 417
    sget-object v9, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    sget-object v10, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    iput v9, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    .line 418
    sget-object v9, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    sget-object v10, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    goto :goto_0

    .line 421
    :cond_2
    sget-object v9, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float v6, v8, v9

    .line 422
    .local v6, "p":F
    float-to-int v5, v6

    .line 423
    .local v5, "i":I
    int-to-float v9, v5

    sub-float/2addr v6, v9

    .line 425
    sget-object v9, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    aget v2, v9, v5

    .line 426
    .local v2, "c0":I
    sget-object v9, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    add-int/lit8 v10, v5, 0x1

    aget v3, v9, v10

    .line 427
    .local v3, "c1":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/larswerkman/holocolorpicker/ColorPicker;->ave(IIF)I

    move-result v0

    .line 428
    .local v0, "a":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/larswerkman/holocolorpicker/ColorPicker;->ave(IIF)I

    move-result v7

    .line 429
    .local v7, "r":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/larswerkman/holocolorpicker/ColorPicker;->ave(IIF)I

    move-result v4

    .line 430
    .local v4, "g":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-direct {p0, v9, v10, v6}, Lcom/larswerkman/holocolorpicker/ColorPicker;->ave(IIF)I

    move-result v1

    .line 432
    .local v1, "b":I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    iput v9, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    .line 433
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    goto :goto_0
.end method

.method private calculatePointerPosition(F)[F
    .locals 6
    .param p1, "angle"    # F

    .prologue
    .line 602
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 603
    .local v0, "x":F
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 605
    .local v1, "y":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method private colorToAngle(I)F
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 512
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 513
    .local v0, "colors":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 515
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/high16 v8, -0x1000000

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 261
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 262
    sget-object v4, Lcom/larswerkman/holocolorpicker/R$styleable;->ColorPicker:[I

    .line 261
    invoke-virtual {v3, p1, v4, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 263
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 267
    .local v1, "b":Landroid/content/res/Resources;
    sget v3, Lcom/larswerkman/holocolorpicker/R$dimen;->color_wheel_thickness:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 265
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelThickness:I

    .line 270
    sget v3, Lcom/larswerkman/holocolorpicker/R$dimen;->color_wheel_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 268
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    .line 271
    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    .line 273
    const/4 v3, 0x2

    .line 274
    sget v4, Lcom/larswerkman/holocolorpicker/R$dimen;->color_center_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 272
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    .line 275
    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorCenterRadius:I

    .line 277
    const/4 v3, 0x3

    .line 278
    sget v4, Lcom/larswerkman/holocolorpicker/R$dimen;->color_center_halo_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 276
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterHaloRadius:I

    .line 279
    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterHaloRadius:I

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorCenterHaloRadius:I

    .line 281
    const/4 v3, 0x4

    .line 282
    sget v4, Lcom/larswerkman/holocolorpicker/R$dimen;->color_pointer_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 280
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerRadius:I

    .line 284
    const/4 v3, 0x5

    .line 285
    sget v4, Lcom/larswerkman/holocolorpicker/R$dimen;->color_pointer_halo_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 283
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    .line 287
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    const v3, -0x4036f025

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    .line 291
    new-instance v2, Landroid/graphics/SweepGradient;

    sget-object v3, Lcom/larswerkman/holocolorpicker/ColorPicker;->COLORS:[I

    const/4 v4, 0x0

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 293
    .local v2, "s":Landroid/graphics/Shader;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    .line 294
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 295
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 296
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelThickness:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 298
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    .line 299
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 302
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    .line 303
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v4}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    .line 306
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v4}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 309
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    .line 310
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v4}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    .line 314
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 317
    return-void
.end method


# virtual methods
.method public addOpacityBar(Lcom/larswerkman/holocolorpicker/OpacityBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/larswerkman/holocolorpicker/OpacityBar;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    .line 630
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    invoke-virtual {v0, p0}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V

    .line 631
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColor(I)V

    .line 632
    return-void
.end method

.method public addSVBar(Lcom/larswerkman/holocolorpicker/SVBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/larswerkman/holocolorpicker/SVBar;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    .line 617
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    invoke-virtual {v0, p0}, Lcom/larswerkman/holocolorpicker/SVBar;->setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V

    .line 618
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    .line 619
    return-void
.end method

.method public addSaturationBar(Lcom/larswerkman/holocolorpicker/SaturationBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/larswerkman/holocolorpicker/SaturationBar;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    .line 637
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    invoke-virtual {v0, p0}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V

    .line 638
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setColor(I)V

    .line 639
    return-void
.end method

.method public addValueBar(Lcom/larswerkman/holocolorpicker/ValueBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/larswerkman/holocolorpicker/ValueBar;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    .line 643
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    invoke-virtual {v0, p0}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V

    .line 644
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColor(I)V

    .line 645
    return-void
.end method

.method public changeOpacityBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 690
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    invoke-virtual {v0, p1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColor(I)V

    .line 693
    :cond_0
    return-void
.end method

.method public changeSaturationBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    invoke-virtual {v0, p1}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setColor(I)V

    .line 705
    :cond_0
    return-void
.end method

.method public changeValueBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 714
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    invoke-virtual {v0, p1}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColor(I)V

    .line 717
    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    return v0
.end method

.method public getOldCenterColor()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldColor:I

    return v0
.end method

.method public getOnColorChangedListener()Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 324
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTranslationOffset:F

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTranslationOffset:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 327
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 329
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculatePointerPosition(F)[F

    move-result-object v6

    .line 332
    .local v6, "pointerPosition":[F
    aget v0, v6, v8

    aget v1, v6, v4

    .line 333
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    .line 332
    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 337
    aget v0, v6, v8

    aget v1, v6, v4

    .line 338
    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerRadius:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    .line 337
    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 341
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterHaloRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 344
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 347
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget-object v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 348
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, -0x80000000

    .line 352
    iget v8, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    iget v9, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    add-int/2addr v8, v9

    mul-int/lit8 v3, v8, 0x2

    .line 354
    .local v3, "intrinsicSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 355
    .local v6, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 356
    .local v7, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 357
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 362
    .local v2, "heightSize":I
    if-ne v6, v11, :cond_0

    .line 363
    move v5, v7

    .line 370
    .local v5, "width":I
    :goto_0
    if-ne v1, v11, :cond_2

    .line 371
    move v0, v2

    .line 378
    .local v0, "height":I
    :goto_1
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 379
    .local v4, "min":I
    invoke-virtual {p0, v4, v4}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setMeasuredDimension(II)V

    .line 380
    int-to-float v8, v4

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTranslationOffset:F

    .line 383
    div-int/lit8 v8, v4, 0x2

    iget v9, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelThickness:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    .line 384
    iget-object v8, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget v9, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    neg-int v10, v10

    int-to-float v10, v10

    .line 385
    iget v11, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float v11, v11

    iget v12, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float v12, v12

    .line 384
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 387
    iget v8, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorCenterRadius:I

    int-to-float v8, v8

    iget v9, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float v9, v9

    iget v10, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    .line 388
    iget v8, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorCenterHaloRadius:I

    int-to-float v8, v8

    iget v9, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorWheelRadius:I

    int-to-float v9, v9

    iget v10, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPreferredColorWheelRadius:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterHaloRadius:I

    .line 389
    iget-object v8, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterRectangle:Landroid/graphics/RectF;

    iget v9, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int v10, v10

    int-to-float v10, v10

    .line 390
    iget v11, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float v11, v11

    iget v12, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float v12, v12

    .line 389
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 391
    return-void

    .line 364
    .end local v0    # "height":I
    .end local v4    # "min":I
    .end local v5    # "width":I
    :cond_0
    if-ne v6, v10, :cond_1

    .line 365
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 366
    .restart local v5    # "width":I
    goto :goto_0

    .line 367
    .end local v5    # "width":I
    :cond_1
    move v5, v3

    .restart local v5    # "width":I
    goto :goto_0

    .line 372
    :cond_2
    if-ne v1, v10, :cond_3

    .line 373
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 374
    .restart local v0    # "height":I
    goto :goto_1

    .line 375
    .end local v0    # "height":I
    :cond_3
    move v0, v3

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 733
    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    .line 735
    .local v1, "savedState":Landroid/os/Bundle;
    const-string v3, "parent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 736
    .local v2, "superState":Landroid/os/Parcelable;
    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 738
    const-string v3, "angle"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    .line 739
    const-string v3, "color"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setOldCenterColor(I)V

    .line 740
    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v3}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v0

    .line 741
    .local v0, "currentColor":I
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 742
    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 743
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 721
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 723
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 724
    .local v0, "state":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 725
    const-string v2, "angle"

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 726
    const-string v2, "color"

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldColor:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 728
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTranslationOffset:F

    sub-float v1, v5, v6

    .line 524
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mTranslationOffset:F

    sub-float v2, v5, v6

    .line 526
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    move v3, v4

    .line 588
    :goto_1
    return v3

    .line 529
    :pswitch_0
    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v5}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculatePointerPosition(F)[F

    move-result-object v0

    .line 530
    .local v0, "pointerPosition":[F
    aget v5, v0, v3

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_0

    .line 531
    aget v5, v0, v3

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_0

    .line 532
    aget v5, v0, v4

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 533
    aget v5, v0, v4

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_0

    .line 534
    iput-boolean v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 535
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto :goto_0

    .line 538
    :cond_0
    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_1

    .line 539
    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColorCenterRadius:I

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_1

    .line 540
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 541
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getOldCenterColor()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setColor(I)V

    .line 542
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getOldCenterColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 552
    .end local v0    # "pointerPosition":[F
    :pswitch_1
    iget-boolean v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    if-eqz v5, :cond_6

    .line 553
    float-to-double v5, v2

    float-to-double v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v3, v5

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    .line 554
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v5}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 556
    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v3}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v3

    iput v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    invoke-virtual {p0, v3}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    .line 558
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    if-eqz v3, :cond_2

    .line 559
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v3, v5}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColor(I)V

    .line 562
    :cond_2
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    if-eqz v3, :cond_3

    .line 563
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v3, v5}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColor(I)V

    .line 566
    :cond_3
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    if-eqz v3, :cond_4

    .line 567
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v3, v5}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setColor(I)V

    .line 570
    :cond_4
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    if-eqz v3, :cond_5

    .line 571
    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v3, v5}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    .line 574
    :cond_5
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto/16 :goto_0

    .line 578
    :cond_6
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 583
    :pswitch_2
    iput-boolean v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 584
    iget-object v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 585
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto/16 :goto_0

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 458
    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->colorToAngle(I)F

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    .line 459
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->calculateColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setColor(I)V

    .line 465
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mOpacityBar:Lcom/larswerkman/holocolorpicker/OpacityBar;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/OpacityBar;->setOpacity(I)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 472
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    .line 477
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 478
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SVBar;->setSaturation(F)V

    .line 484
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 486
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setColor(I)V

    .line 487
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SaturationBar;->setSaturation(F)V

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSaturationBar:Lcom/larswerkman/holocolorpicker/SaturationBar;

    if-nez v0, :cond_5

    .line 491
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 492
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mColor:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ValueBar;->setColor(I)V

    .line 493
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ValueBar;->setValue(F)V

    .line 499
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    .line 500
    return-void

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mSVbar:Lcom/larswerkman/holocolorpicker/SVBar;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SVBar;->setValue(F)V

    goto :goto_0

    .line 494
    :cond_5
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    if-eqz v0, :cond_3

    .line 495
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 496
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mValueBar:Lcom/larswerkman/holocolorpicker/ValueBar;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mHSV:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ValueBar;->setValue(F)V

    goto :goto_1
.end method

.method public setNewCenterColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 654
    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewColor:I

    .line 655
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterNewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 656
    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldColor:I

    if-nez v0, :cond_0

    .line 657
    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldColor:I

    .line 658
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;

    invoke-interface {v0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;->onColorChanged(I)V

    .line 663
    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    .line 664
    return-void
.end method

.method public setOldCenterColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 673
    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldColor:I

    .line 674
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->mCenterOldPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 675
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    .line 676
    return-void
.end method

.method public setOnColorChangedListener(Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->onColorChangedListener:Lcom/larswerkman/holocolorpicker/ColorPicker$OnColorChangedListener;

    .line 249
    return-void
.end method
