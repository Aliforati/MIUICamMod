.class public Lcom/android/camera/ui/ReferenceLineDrawer;
.super Landroid/view/View;
.source ""


# static fields
.field public static final BORDER:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static mIsGoldenSection:Z

.field public static mIsGoldenSpiral:Z

.field public static reference_line_width:F

.field public static reference_line_width_end:F

.field public static reference_line_width_start:F


# instance fields
.field public isGradienterEnabled:Z

.field public mBottomVisible:Z

.field public mColumnCount:I

.field public mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field public mDeviceRotation:F

.field public mFrameColor:I

.field public mFramePaint:Landroid/graphics/Paint;

.field public mGoldensPiralPaint:Landroid/graphics/Paint;

.field public mGoldensPiralPaintFrame:Landroid/graphics/Paint;

.field public mLineColor:I

.field public mLinePaint:Landroid/graphics/Paint;

.field public mRowCount:I

.field public mTopVisible:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/ReferenceLineDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ReferenceLineDrawer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSpiral:Z

    sput-boolean v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSection:Z

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    iput-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const v0, 0x75ffffff

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const/high16 v0, 0x26000000

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070527

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070526

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    sput p1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const p2, 0x75ffffff

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const/high16 p2, 0x26000000

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070525

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    sput p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070527

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    sput p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070526

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    sput p1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    const p2, 0x75ffffff

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    const/high16 p2, 0x26000000

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070525

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    sput p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070527

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    sput p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070526

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    sput p1, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    return-void
.end method

.method private GoldenSection(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSection:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSpiral:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v5, v5

    const/4 v6, 0x5

    if-ne v3, v6, :cond_0

    const v3, 0x3f41cac1    # 0.757f

    mul-float/2addr v3, v4

    const v6, 0x3df95810    # 0.12175f

    mul-float/2addr v4, v6

    move/from16 v26, v4

    move v4, v3

    move/from16 v3, v26

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v6, v1

    :goto_1
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f1e353f    # 0.618f

    const v11, 0x3ec39581    # 0.382f

    if-ge v6, v7, :cond_5

    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v12, :cond_1

    if-ne v6, v1, :cond_1

    mul-float v7, v4, v11

    :goto_2
    add-float v8, v7, v3

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v14, v8, v12

    const/high16 v15, 0x3f800000    # 1.0f

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v12, v7

    add-float v16, v12, v3

    mul-float v17, v5, v11

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v11

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v8, v11

    mul-float/2addr v10, v5

    add-float v14, v10, v9

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v8

    add-float v15, v7, v3

    goto :goto_3

    :cond_1
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v12, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v12, :cond_2

    if-ne v6, v8, :cond_2

    mul-float v7, v4, v10

    goto :goto_2

    :cond_2
    if-ne v6, v1, :cond_3

    mul-float/2addr v11, v4

    add-float v7, v11, v3

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v13, v7, v8

    const/high16 v14, 0x3f800000    # 1.0f

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v11, v7

    add-float v15, v11, v3

    :goto_3
    sub-float v16, v5, v9

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_3
    if-ne v6, v8, :cond_4

    mul-float/2addr v10, v4

    add-float v7, v10, v3

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v7, v8

    const/high16 v13, 0x3f800000    # 1.0f

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v10, v7

    add-float v14, v10, v3

    sub-float v15, v5, v9

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v7

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_5
    iget-boolean v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    xor-int/2addr v6, v1

    move v7, v2

    :goto_5
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v7, v12, :cond_d

    if-eqz v7, :cond_6

    if-ne v7, v12, :cond_8

    :cond_6
    if-nez v7, :cond_7

    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v12, :cond_8

    :cond_7
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v7, v12, :cond_c

    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v12, :cond_c

    :cond_8
    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v13, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v12, v13, :cond_9

    if-ne v7, v1, :cond_9

    int-to-float v12, v6

    add-float v14, v12, v3

    mul-float v19, v5, v11

    :goto_6
    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v15, v19, v13

    mul-float v13, v4, v11

    add-float v16, v13, v3

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v17, v19, v13

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v13, v4, v10

    add-float/2addr v13, v12

    add-float v21, v13, v3

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v22, v19, v13

    sub-float v12, v4, v12

    add-float v23, v12, v3

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v24, v19, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v20, p1

    move-object/from16 v25, v12

    invoke-virtual/range {v20 .. v25}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_9
    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v13, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v12, v13, :cond_a

    if-ne v7, v8, :cond_a

    int-to-float v12, v6

    add-float v14, v12, v3

    mul-float v19, v5, v10

    goto :goto_6

    :cond_a
    if-ne v7, v1, :cond_b

    int-to-float v12, v6

    add-float v14, v12, v3

    mul-float v13, v5, v11

    :goto_7
    sget v15, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v15, v13, v15

    sub-float v12, v4, v12

    add-float v16, v12, v3

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v17, v13, v12

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_b
    if-ne v7, v8, :cond_c

    int-to-float v12, v6

    add-float v14, v12, v3

    mul-float v13, v5, v10

    goto :goto_7

    :cond_c
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :cond_d
    move v7, v1

    :goto_9
    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    if-ge v7, v12, :cond_12

    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v12, :cond_e

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v13, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v12, v13, :cond_e

    if-ne v7, v1, :cond_e

    mul-float v12, v4, v11

    :goto_a
    add-float v19, v12, v3

    const/high16 v15, 0x3f800000    # 1.0f

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v12

    add-float v16, v13, v3

    mul-float v17, v5, v11

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v14

    move/from16 v14, v19

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v13, v5, v10

    add-float v15, v13, v9

    goto :goto_c

    :cond_e
    iget-boolean v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v12, :cond_f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v13, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v12, v13, :cond_f

    if-ne v7, v8, :cond_f

    mul-float v12, v4, v10

    goto :goto_a

    :cond_f
    if-ne v7, v1, :cond_10

    mul-float v12, v4, v11

    :goto_b
    add-float v14, v12, v3

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_c
    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v12, v13

    add-float v16, v12, v3

    sub-float v17, v5, v9

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_10
    if-ne v7, v8, :cond_11

    mul-float v12, v4, v10

    goto :goto_b

    :cond_11
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_12
    :goto_e
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v2, v7, :cond_1a

    if-eqz v2, :cond_13

    if-ne v2, v7, :cond_15

    :cond_13
    if-nez v2, :cond_14

    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v7, :cond_15

    :cond_14
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v2, v7, :cond_19

    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v7, :cond_19

    :cond_15
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_16

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v9, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v9, :cond_16

    if-ne v2, v1, :cond_16

    int-to-float v7, v6

    add-float v13, v7, v3

    mul-float v9, v5, v11

    mul-float v12, v4, v11

    add-float v15, v12, v3

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v9, v12

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v14

    move v14, v9

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v12, v4, v10

    add-float/2addr v12, v3

    add-float v15, v12, v7

    :goto_f
    sub-float v7, v4, v7

    add-float v17, v7, v3

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v18, v9, v7

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v16, v9

    move-object/from16 v19, v7

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_16
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_17

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v9, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v9, :cond_17

    if-ne v2, v8, :cond_17

    int-to-float v7, v6

    add-float v13, v7, v3

    mul-float v9, v5, v10

    mul-float v12, v4, v11

    add-float v15, v12, v3

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v9, v12

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v14

    move v14, v9

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-float v12, v4, v10

    add-float/2addr v12, v7

    add-float v15, v12, v3

    goto :goto_f

    :cond_17
    if-ne v2, v1, :cond_18

    int-to-float v7, v6

    add-float v13, v7, v3

    mul-float v14, v5, v11

    :goto_10
    sub-float v7, v4, v7

    add-float v15, v7, v3

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v16, v14, v7

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_18
    if-ne v2, v8, :cond_19

    int-to-float v7, v6

    add-float v13, v7, v3

    mul-float v14, v5, v10

    goto :goto_10

    :cond_19
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    :cond_1a
    return-void
.end method

.method public static IsGoldenSection()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSection:Z

    return v0
.end method

.method public static IsGoldenSpiral()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSpiral:Z

    return v0
.end method

.method private Jiugongge(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSection:Z

    sput-boolean v1, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSpiral:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v2, v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    const v5, 0x3f41cac1    # 0.757f

    mul-float/2addr v5, v2

    const v6, 0x3df95810    # 0.12175f

    mul-float/2addr v2, v6

    move/from16 v23, v5

    move v5, v2

    move/from16 v2, v23

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v6, v3

    :goto_1
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    const/4 v8, 0x2

    if-ge v6, v7, :cond_3

    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v9, v10, :cond_1

    if-ne v6, v8, :cond_1

    int-to-float v8, v6

    mul-float/2addr v8, v2

    int-to-float v9, v7

    div-float v9, v8, v9

    add-float/2addr v9, v5

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v9, v10

    const/high16 v13, 0x3f800000    # 1.0f

    int-to-float v7, v7

    div-float v7, v8, v7

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v9

    add-float v14, v7, v5

    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v7, v4, v7

    int-to-float v15, v7

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v7

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v9, v7

    div-float v9, v8, v9

    add-float/2addr v9, v5

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v9, v10

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v4, v9

    sub-int/2addr v9, v3

    mul-int/2addr v10, v9

    add-int/2addr v10, v3

    int-to-float v13, v10

    int-to-float v7, v7

    div-float/2addr v8, v7

    sget v7, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v8, v7

    add-float v14, v8, v5

    :goto_2
    add-int/lit8 v7, v4, -0x1

    int-to-float v15, v7

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_1
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v8, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v8, :cond_2

    if-ne v6, v3, :cond_2

    int-to-float v7, v6

    mul-float/2addr v7, v2

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v9, v8

    div-float v9, v7, v9

    add-float/2addr v9, v5

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v9, v10

    const/high16 v13, 0x3f800000    # 1.0f

    int-to-float v8, v8

    div-float v8, v7, v8

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v8, v9

    add-float v14, v8, v5

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v8, v4, v8

    int-to-float v15, v8

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v9, v8

    div-float v9, v7, v9

    add-float/2addr v9, v5

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v9, v10

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v4, v9

    sub-int/2addr v9, v3

    mul-int/2addr v10, v9

    add-int/2addr v10, v3

    int-to-float v13, v10

    int-to-float v8, v8

    div-float/2addr v7, v8

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v8

    add-float v14, v7, v5

    goto :goto_2

    :cond_2
    int-to-float v7, v6

    mul-float/2addr v7, v2

    iget v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v9, v8

    div-float v9, v7, v9

    add-float/2addr v9, v5

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v12, v9, v10

    const/high16 v13, 0x3f800000    # 1.0f

    int-to-float v8, v8

    div-float/2addr v7, v8

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v7, v8

    add-float v14, v7, v5

    add-int/lit8 v7, v4, -0x1

    int-to-float v15, v7

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    :goto_3
    move-object/from16 v16, v7

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_3
    iget-boolean v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    xor-int/2addr v6, v3

    move v7, v1

    :goto_4
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v7, v9, :cond_a

    if-eqz v7, :cond_4

    if-ne v7, v9, :cond_6

    :cond_4
    if-nez v7, :cond_5

    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v9, :cond_6

    :cond_5
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v7, v9, :cond_9

    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v9, :cond_9

    :cond_6
    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v9, v10, :cond_7

    if-ne v7, v3, :cond_7

    :goto_5
    int-to-float v9, v6

    add-float v11, v9, v5

    mul-int v16, v7, v4

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v12, v16, v10

    int-to-float v12, v12

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v12, v13

    iget v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v13, v13

    div-float v13, v2, v13

    add-float/2addr v13, v5

    div-int v10, v16, v10

    int-to-float v10, v10

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float/2addr v14, v10

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v2, v11

    sub-int/2addr v10, v3

    int-to-float v10, v10

    mul-float/2addr v11, v10

    add-float/2addr v11, v9

    add-float v18, v11, v5

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v11, v16, v10

    int-to-float v11, v11

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float v19, v11, v12

    sub-float v9, v2, v9

    add-float v20, v9, v5

    div-int v9, v16, v10

    int-to-float v9, v9

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v21, v9, v10

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move-object/from16 v22, v9

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_7
    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v9, :cond_8

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v9, v10, :cond_8

    if-ne v7, v8, :cond_8

    goto :goto_5

    :cond_8
    int-to-float v9, v6

    add-float v11, v9, v5

    mul-int v10, v7, v4

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v13, v10, v12

    int-to-float v13, v13

    sget v14, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_start:F

    sub-float/2addr v13, v14

    sub-float v9, v2, v9

    add-float/2addr v9, v5

    div-int/2addr v10, v12

    int-to-float v10, v10

    sget v12, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width_end:F

    add-float v14, v10, v12

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v12, v13

    move v13, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_a
    move v7, v3

    :goto_7
    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    if-ge v7, v9, :cond_d

    iget-boolean v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v10, :cond_b

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v11, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v10, v11, :cond_b

    if-ne v7, v3, :cond_b

    int-to-float v10, v7

    mul-float/2addr v10, v2

    int-to-float v11, v9

    div-float v11, v10, v11

    add-float v13, v11, v5

    const/high16 v14, 0x3f800000    # 1.0f

    int-to-float v9, v9

    div-float v9, v10, v9

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v9, v11

    add-float v15, v9, v5

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v9, v4, v9

    int-to-float v9, v9

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v9

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v9

    div-float v11, v10, v11

    add-float v13, v11, v5

    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v12, v4, v11

    sub-int/2addr v11, v3

    mul-int/2addr v12, v11

    add-int/2addr v12, v3

    int-to-float v14, v12

    int-to-float v9, v9

    div-float/2addr v10, v9

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v10, v9

    add-float v15, v10, v5

    goto :goto_9

    :cond_b
    iget-boolean v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v9, :cond_c

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v10, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v9, v10, :cond_c

    if-ne v7, v8, :cond_c

    int-to-float v9, v7

    mul-float/2addr v9, v2

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v9, v11

    add-float v13, v11, v5

    const/high16 v14, 0x3f800000    # 1.0f

    int-to-float v10, v10

    div-float v10, v9, v10

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v10, v11

    add-float v15, v10, v5

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v4, v10

    int-to-float v10, v10

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v9, v11

    add-float v13, v11, v5

    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v12, v4, v11

    sub-int/2addr v11, v3

    mul-int/2addr v12, v11

    add-int/2addr v12, v3

    int-to-float v14, v12

    goto :goto_8

    :cond_c
    int-to-float v9, v7

    mul-float/2addr v9, v2

    iget v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v11, v10

    div-float v11, v9, v11

    add-float v13, v11, v5

    const/high16 v14, 0x3f800000    # 1.0f

    :goto_8
    int-to-float v10, v10

    div-float/2addr v9, v10

    sget v10, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v9, v10

    add-float v15, v9, v5

    :goto_9
    add-int/lit8 v9, v4, -0x1

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_d
    :goto_a
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-gt v1, v7, :cond_14

    if-eqz v1, :cond_e

    if-ne v1, v7, :cond_10

    :cond_e
    if-nez v1, :cond_f

    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-nez v7, :cond_10

    :cond_f
    iget v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    if-ne v1, v7, :cond_13

    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eqz v7, :cond_13

    :cond_10
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_11

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v9, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v9, :cond_11

    if-ne v1, v3, :cond_11

    :goto_b
    int-to-float v7, v6

    add-float v10, v7, v5

    mul-int v15, v1, v4

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v11, v15, v9

    int-to-float v11, v11

    iget v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v12, v12

    div-float v12, v2, v12

    add-float/2addr v12, v5

    div-int v9, v15, v9

    int-to-float v9, v9

    sget v13, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float/2addr v13, v9

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    int-to-float v10, v9

    div-float v10, v2, v10

    sub-int/2addr v9, v3

    int-to-float v9, v9

    mul-float/2addr v10, v9

    add-float/2addr v10, v7

    add-float v17, v10, v5

    iget v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v10, v15, v9

    int-to-float v10, v10

    sub-float v7, v2, v7

    add-float v19, v7, v5

    div-int/2addr v15, v9

    int-to-float v7, v15

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v20, v7, v9

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v18, v10

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_c

    :cond_11
    iget-boolean v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz v7, :cond_12

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    sget-object v9, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-ne v7, v9, :cond_12

    if-ne v1, v8, :cond_12

    goto :goto_b

    :cond_12
    int-to-float v7, v6

    add-float v10, v7, v5

    mul-int v9, v1, v4

    iget v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    div-int v12, v9, v11

    int-to-float v12, v12

    sub-float v7, v2, v7

    add-float/2addr v7, v5

    div-int/2addr v9, v11

    int-to-float v9, v9

    sget v11, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    add-float v13, v9, v11

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v12

    move v12, v7

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_13
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_14
    return-void
.end method

.method private LeftGoldenSpiral(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v0, p0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSection:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSpiral:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    const v7, 0x3f3eb852    # 0.745f

    int-to-float v2, v2

    mul-float/2addr v7, v2

    const v8, 0x3e03126f    # 0.128f

    mul-float/2addr v2, v8

    move v8, v7

    move v7, v2

    move v2, v6

    goto :goto_0

    :cond_0
    int-to-float v7, v2

    const v2, 0x3eab851f    # 0.335f

    move v8, v7

    move v7, v6

    :goto_0
    const/4 v9, 0x3

    const v13, 0x3e954c98    # 0.2916f

    const v14, 0x3f1e425b    # 0.6182f

    const v15, 0x3ef1a9fc    # 0.472f

    const v16, 0x3f92b021    # 1.146f

    const v17, 0x3e71a9fc    # 0.236f

    const v18, 0x3f68e8a7    # 0.9098f

    const v19, 0x3f072b02    # 0.528f

    const v20, 0x3f9e353f    # 1.236f

    const v21, 0x3f1e353f    # 0.618f

    const/high16 v22, 0x40000000    # 2.0f

    const/high16 v23, 0x3f800000    # 1.0f

    if-ne v4, v9, :cond_1

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v25, 0x3f800000    # 1.0f

    mul-float/2addr v1, v8

    sub-float v2, v6, v1

    mul-float v22, v22, v8

    sub-float v3, v22, v23

    sub-float v4, v22, v1

    const/high16 v29, 0x42b40000    # 90.0f

    const/high16 v30, 0x42b40000    # 90.0f

    const/16 v31, 0x0

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v24, p1

    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move-object/from16 v32, v5

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v33, 0x3f800000    # 1.0f

    mul-float v21, v21, v8

    sub-float v5, v8, v21

    sub-float/2addr v5, v1

    sub-float v34, v5, v23

    mul-float v20, v20, v8

    add-float v21, v8, v21

    sub-float v6, v21, v1

    const/high16 v37, 0x43340000    # 180.0f

    const/high16 v38, 0x42b40000    # 90.0f

    const/16 v39, 0x0

    iget-object v7, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v32, p1

    move/from16 v35, v20

    move/from16 v36, v6

    move-object/from16 v40, v7

    invoke-virtual/range {v32 .. v40}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v17, v17, v8

    add-float v7, v17, v23

    sub-float v9, v8, v23

    mul-float v16, v16, v8

    sub-float v16, v16, v1

    const/high16 v29, 0x43870000    # 270.0f

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v25, v7

    move/from16 v26, v5

    move/from16 v27, v9

    move/from16 v28, v16

    move-object/from16 v32, v10

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v19, v19, v8

    add-float v10, v19, v23

    mul-float/2addr v15, v8

    sub-float v15, v8, v15

    sub-float/2addr v15, v1

    sub-float v17, v8, v1

    const/16 v29, 0x0

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v25, v10

    move/from16 v26, v15

    move/from16 v28, v17

    move-object/from16 v32, v11

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float/2addr v14, v8

    add-float v11, v14, v23

    mul-float/2addr v13, v8

    sub-float v13, v8, v13

    sub-float/2addr v13, v1

    mul-float v18, v18, v8

    sub-float v14, v18, v23

    const/high16 v29, 0x42b40000    # 90.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v25, v11

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v32, v12

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v12, 0x3e718fc5    # 0.2359f

    mul-float/2addr v12, v8

    sub-float v12, v8, v12

    sub-float/2addr v12, v1

    const v18, 0x3f4c63f1    # 0.7984f

    mul-float v18, v18, v8

    sub-float v18, v18, v23

    const v19, 0x3d6425af    # 0.0557f

    mul-float v19, v19, v8

    sub-float v8, v8, v19

    sub-float v1, v8, v1

    const/high16 v29, 0x43340000    # 180.0f

    const/high16 v30, 0x43340000    # 180.0f

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v26, v12

    move/from16 v27, v18

    move/from16 v28, v1

    move-object/from16 v32, v8

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v31, 0x42b40000    # 90.0f

    const/high16 v32, 0x42b40000    # 90.0f

    const/16 v33, 0x0

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move-object/from16 v26, p1

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v34, v8

    invoke-virtual/range {v26 .. v34}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v27, v20, v23

    const/high16 v29, 0x43340000    # 180.0f

    const/high16 v30, 0x42b40000    # 90.0f

    const/16 v31, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v26, v5

    move/from16 v28, v6

    move-object/from16 v32, v2

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v29, 0x43870000    # 270.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v25, v7

    move/from16 v27, v9

    move/from16 v28, v16

    move-object/from16 v32, v2

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v29, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v25, v10

    move/from16 v26, v15

    move/from16 v28, v17

    move-object/from16 v32, v2

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v29, 0x42b40000    # 90.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v25, v11

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v32, v2

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v29, 0x43340000    # 180.0f

    const/high16 v30, 0x43340000    # 180.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v26, v12

    move/from16 v27, v18

    move/from16 v28, v1

    move-object/from16 v32, v2

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_1
    if-eq v4, v1, :cond_6

    if-ne v4, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v4, :cond_3

    const/4 v1, 0x4

    if-ne v4, v1, :cond_7

    :cond_3
    int-to-float v1, v3

    cmpg-float v4, v8, v1

    if-gez v4, :cond_4

    const v2, 0x3db43958    # 0.088f

    goto :goto_1

    :cond_4
    cmpl-float v4, v8, v1

    if-nez v4, :cond_5

    const v2, 0x3e439581    # 0.191f

    :cond_5
    :goto_1
    mul-float/2addr v2, v8

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x3fcf1aa0    # 1.618f

    div-float v5, v3, v4

    sub-float v6, v1, v5

    add-float v6, v6, v23

    add-float v7, v5, v2

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    sub-float v8, v1, v8

    add-float v13, v8, v23

    const/high16 v14, 0x42b40000    # 90.0f

    const/high16 v15, 0x42b40000    # 90.0f

    const/16 v16, 0x0

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v2

    move v11, v6

    move v12, v7

    move-object/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v3, v5

    add-float/2addr v3, v2

    div-float v5, v1, v4

    sub-float v5, v1, v5

    mul-float v8, v5, v22

    const/high16 v14, 0x43340000    # 180.0f

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move v12, v3

    move-object/from16 v17, v13

    move v13, v8

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v20, v20, v1

    div-float v9, v20, v4

    mul-float v21, v21, v1

    sub-float v10, v9, v21

    add-float v22, v10, v2

    const/high16 v26, 0x3f800000    # 1.0f

    add-float v33, v21, v2

    sub-float v20, v20, v9

    const/high16 v29, 0x43870000    # 270.0f

    const/high16 v30, 0x42b40000    # 90.0f

    const/16 v31, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v24, p1

    move/from16 v25, v22

    move/from16 v27, v33

    move/from16 v28, v20

    move-object/from16 v32, v9

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x3f435a86    # 0.7631f

    mul-float/2addr v9, v1

    div-float/2addr v9, v4

    const v10, 0x3e149518    # 0.1451f

    mul-float/2addr v10, v1

    sub-float/2addr v9, v10

    add-float v34, v9, v2

    const v9, 0x3e71c433    # 0.2361f

    mul-float/2addr v9, v1

    div-float v10, v9, v4

    sub-float/2addr v9, v10

    add-float v35, v9, v23

    const/16 v29, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v25, v34

    move/from16 v26, v35

    move/from16 v28, v5

    move-object/from16 v32, v9

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    div-float v21, v21, v4

    add-float v21, v21, v2

    mul-float v19, v19, v1

    div-float v9, v19, v4

    sub-float v19, v19, v9

    add-float v19, v19, v23

    const v9, 0x3ef1c433    # 0.4722f

    mul-float/2addr v9, v1

    const v10, 0x3e154c98    # 0.1458f

    mul-float/2addr v10, v1

    div-float/2addr v10, v4

    add-float/2addr v9, v10

    add-float v36, v9, v2

    const/high16 v29, 0x42b40000    # 90.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v25, v21

    move/from16 v26, v19

    move/from16 v27, v36

    move-object/from16 v32, v9

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v9, 0x3f1e3bcd    # 0.6181f

    mul-float/2addr v9, v1

    div-float v10, v9, v4

    sub-float/2addr v9, v10

    add-float v37, v9, v23

    const v9, 0x3ea710cb    # 0.3263f

    mul-float/2addr v9, v1

    div-float/2addr v9, v4

    const v10, 0x3e9559b4    # 0.2917f

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    add-float v38, v9, v2

    mul-float v18, v18, v1

    div-float v4, v18, v4

    sub-float v4, v18, v4

    const/high16 v15, 0x43340000    # 180.0f

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v10, v21

    move/from16 v11, v37

    move/from16 v12, v38

    move-object/from16 v17, v13

    move v13, v4

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v9, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    sub-float/2addr v1, v9

    add-float v13, v1, v23

    const/high16 v14, 0x42b40000    # 90.0f

    const/high16 v15, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v2

    move v11, v6

    move v12, v7

    move-object/from16 v17, v1

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v14, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move v12, v3

    move v13, v8

    move-object/from16 v17, v1

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v29, 0x43870000    # 270.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v25, v22

    move/from16 v27, v33

    move/from16 v28, v20

    move-object/from16 v32, v1

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v29, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v25, v34

    move/from16 v26, v35

    move/from16 v28, v5

    move-object/from16 v32, v1

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v29, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v25, v21

    move/from16 v26, v19

    move/from16 v27, v36

    move-object/from16 v32, v1

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v15, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v10, v21

    move/from16 v11, v37

    move/from16 v12, v38

    move v13, v4

    move-object/from16 v17, v1

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_6
    :goto_2
    add-float v1, v7, v6

    mul-float/2addr v2, v8

    sub-float v3, v6, v2

    mul-float v22, v22, v8

    add-float v4, v22, v7

    sub-float v9, v22, v2

    const/high16 v27, 0x42b40000    # 90.0f

    const/high16 v28, 0x42b40000    # 90.0f

    const/16 v29, 0x0

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move/from16 v23, v1

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v9

    move-object/from16 v30, v5

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v21, v21, v8

    sub-float v5, v8, v21

    sub-float v31, v5, v2

    mul-float v20, v20, v8

    add-float v20, v20, v7

    add-float v21, v8, v21

    sub-float v21, v21, v2

    const/high16 v27, 0x43340000    # 180.0f

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v24, v31

    move/from16 v25, v20

    move/from16 v26, v21

    move-object/from16 v30, v5

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v17, v17, v8

    add-float v17, v17, v7

    add-float v32, v8, v7

    mul-float v16, v16, v8

    sub-float v16, v16, v2

    const/high16 v27, 0x43870000    # 270.0f

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v23, v17

    move/from16 v25, v32

    move/from16 v26, v16

    move-object/from16 v30, v5

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v19, v19, v8

    add-float v19, v19, v7

    mul-float/2addr v15, v8

    sub-float v5, v8, v15

    sub-float v15, v5, v2

    sub-float v36, v8, v2

    const/16 v27, 0x0

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v23, v19

    move/from16 v24, v15

    move/from16 v26, v36

    move-object/from16 v30, v5

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float/2addr v14, v8

    add-float/2addr v14, v7

    mul-float/2addr v13, v8

    sub-float v5, v8, v13

    sub-float v37, v5, v2

    mul-float v18, v18, v8

    add-float v18, v18, v7

    const/high16 v27, 0x42b40000    # 90.0f

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v23, v14

    move/from16 v24, v37

    move/from16 v25, v18

    move-object/from16 v30, v5

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v5, 0x3e718fc5    # 0.2359f

    mul-float v12, v8, v5

    sub-float v5, v8, v12

    sub-float v35, v5, v2

    const v5, 0x3f4c63f1    # 0.7984f

    mul-float v11, v8, v5

    add-float v34, v11, v7

    const v5, 0x3d6425af    # 0.0557f

    mul-float v10, v8, v5

    sub-float/2addr v8, v10

    sub-float v2, v8, v2

    const/high16 v27, 0x43340000    # 180.0f

    const/high16 v28, 0x43340000    # 180.0f

    iget-object v5, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v24, v35

    move/from16 v25, v34

    move/from16 v26, v2

    move-object/from16 v30, v5

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v10, 0x42b40000    # 90.0f

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v1

    move v7, v3

    move v8, v4

    invoke-virtual/range {v5 .. v13}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v10, 0x43340000    # 180.0f

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v7, v31

    move/from16 v8, v20

    move/from16 v9, v21

    invoke-virtual/range {v5 .. v13}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v27, 0x43870000    # 270.0f

    const/high16 v28, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v23, v17

    move/from16 v24, v31

    move/from16 v25, v32

    move/from16 v26, v16

    move-object/from16 v30, v1

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v27, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v23, v19

    move/from16 v24, v15

    move/from16 v26, v36

    move-object/from16 v30, v1

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v27, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v23, v14

    move/from16 v24, v37

    move/from16 v25, v18

    move-object/from16 v30, v1

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v27, 0x43340000    # 180.0f

    const/high16 v28, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v24, v35

    move/from16 v25, v34

    move/from16 v26, v2

    move-object/from16 v30, v1

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private RightGoldenSpiral(Landroid/graphics/Canvas;)V
    .locals 43

    move-object/from16 v0, p0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSection:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/ui/ReferenceLineDrawer;->mIsGoldenSpiral:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-ne v2, v5, :cond_0

    const v7, 0x3f3eb852    # 0.745f

    int-to-float v3, v3

    mul-float/2addr v7, v3

    const v8, 0x3e03126f    # 0.128f

    mul-float/2addr v3, v8

    move v8, v7

    move v7, v6

    goto :goto_0

    :cond_0
    int-to-float v7, v3

    const v3, 0x3eab851f    # 0.335f

    move v8, v7

    move v7, v3

    move v3, v6

    :goto_0
    const v12, 0x3ec37b4a    # 0.3818f

    const v13, 0x3e954c98    # 0.2916f

    const v14, 0x3db8bac7    # 0.0902f

    const v15, 0x3ef1a9fc    # 0.472f

    const v16, 0x3f92b021    # 1.146f

    const v17, 0x3f439581    # 0.764f

    const v18, -0x418e5604    # -0.236f

    const/4 v5, 0x3

    const v20, 0x3f1e353f    # 0.618f

    const/high16 v21, 0x40000000    # 2.0f

    const/high16 v22, 0x3f800000    # 1.0f

    if-ne v2, v5, :cond_1

    const v1, 0x3dcccccd    # 0.1f

    sub-float v2, v6, v8

    add-float v2, v2, v22

    mul-float/2addr v1, v8

    sub-float v3, v6, v1

    sub-float v4, v8, v22

    mul-float v21, v21, v8

    sub-float v5, v21, v1

    const/16 v28, 0x0

    const/high16 v29, 0x42b40000    # 90.0f

    const/16 v30, 0x0

    iget-object v6, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v23, p1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v31, v6

    invoke-virtual/range {v23 .. v31}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v18, v18, v8

    add-float v6, v18, v22

    mul-float v20, v20, v8

    sub-float v7, v8, v20

    sub-float/2addr v7, v1

    add-float v20, v8, v20

    sub-float v18, v20, v1

    const/high16 v28, 0x43870000    # 270.0f

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v27, v18

    move-object/from16 v31, v9

    invoke-virtual/range {v23 .. v31}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v24, 0x3f800000    # 1.0f

    mul-float v17, v17, v8

    sub-float v9, v17, v22

    mul-float v16, v16, v8

    sub-float v16, v16, v1

    const/high16 v28, 0x43340000    # 180.0f

    iget-object v10, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v26, v9

    move/from16 v27, v16

    move-object/from16 v31, v10

    invoke-virtual/range {v23 .. v31}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v35, 0x3f800000    # 1.0f

    mul-float/2addr v15, v8

    sub-float v10, v8, v15

    sub-float/2addr v10, v1

    sub-float v15, v15, v22

    sub-float v17, v8, v1

    const/high16 v39, 0x42b40000    # 90.0f

    const/high16 v40, 0x42b40000    # 90.0f

    const/16 v41, 0x0

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v34, p1

    move/from16 v36, v10

    move/from16 v37, v15

    move/from16 v38, v17

    move-object/from16 v42, v11

    invoke-virtual/range {v34 .. v42}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float/2addr v14, v8

    add-float v11, v14, v22

    mul-float/2addr v13, v8

    sub-float v13, v8, v13

    sub-float/2addr v13, v1

    mul-float/2addr v12, v8

    sub-float v12, v12, v22

    const/16 v28, 0x0

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v24, v11

    move/from16 v25, v13

    move/from16 v26, v12

    move/from16 v27, v17

    move-object/from16 v31, v14

    invoke-virtual/range {v23 .. v31}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v14, 0x3e4e703b    # 0.2016f

    mul-float/2addr v14, v8

    add-float v14, v14, v22

    const v19, 0x3e718fc5    # 0.2359f

    mul-float v19, v19, v8

    sub-float v19, v8, v19

    sub-float v19, v19, v1

    const v20, 0x3d6425af    # 0.0557f

    mul-float v20, v20, v8

    sub-float v8, v8, v20

    sub-float v1, v8, v1

    const/high16 v28, 0x43340000    # 180.0f

    const/high16 v29, 0x43340000    # 180.0f

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v24, v14

    move/from16 v25, v19

    move/from16 v27, v1

    move-object/from16 v31, v8

    invoke-virtual/range {v23 .. v31}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v28, 0x0

    const/high16 v29, 0x42b40000    # 90.0f

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v31, v8

    invoke-virtual/range {v23 .. v31}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v28, 0x43870000    # 270.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v27, v18

    move-object/from16 v31, v2

    invoke-virtual/range {v23 .. v31}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v28, 0x43340000    # 180.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v26, v9

    move/from16 v27, v16

    move-object/from16 v31, v2

    invoke-virtual/range {v23 .. v31}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v28, 0x42b40000    # 90.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v25, v10

    move/from16 v26, v15

    move/from16 v27, v17

    move-object/from16 v31, v2

    invoke-virtual/range {v23 .. v31}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v28, 0x0

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v24, v11

    move/from16 v25, v13

    move/from16 v26, v12

    move-object/from16 v31, v2

    invoke-virtual/range {v23 .. v31}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v28, 0x43340000    # 180.0f

    const/high16 v29, 0x43340000    # 180.0f

    iget-object v2, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v24, v14

    move/from16 v25, v19

    move/from16 v27, v1

    move-object/from16 v31, v2

    invoke-virtual/range {v23 .. v31}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_1
    if-eq v2, v1, :cond_6

    const/4 v1, 0x5

    if-ne v2, v1, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x4

    if-ne v2, v1, :cond_7

    :cond_3
    int-to-float v1, v4

    cmpg-float v2, v8, v1

    if-gez v2, :cond_4

    const v7, 0x3db43958    # 0.088f

    goto :goto_1

    :cond_4
    cmpl-float v2, v8, v1

    if-nez v2, :cond_5

    const v7, 0x3e439581    # 0.191f

    :cond_5
    :goto_1
    neg-int v2, v4

    int-to-float v2, v2

    const v3, 0x3fcf1aa0    # 1.618f

    div-float/2addr v2, v3

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    mul-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    div-float v17, v6, v3

    sub-float v8, v1, v17

    add-float v18, v8, v22

    div-float v19, v1, v3

    add-float v23, v19, v7

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    sub-float v8, v1, v8

    add-float v12, v8, v22

    const/4 v13, 0x0

    const/high16 v14, 0x42b40000    # 90.0f

    const/4 v15, 0x0

    iget-object v11, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v2

    move/from16 v10, v18

    move-object/from16 v16, v11

    move/from16 v11, v23

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v4, v6

    add-float/2addr v4, v7

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v5, v1, v19

    mul-float v6, v5, v21

    const/high16 v13, 0x43870000    # 270.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move v9, v4

    move-object/from16 v16, v12

    move v12, v6

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v8, 0x40278d50    # 2.618f

    mul-float/2addr v8, v1

    div-float/2addr v8, v3

    mul-float v9, v1, v3

    sub-float/2addr v8, v9

    add-float v19, v8, v7

    const/high16 v26, 0x3f800000    # 1.0f

    const v8, 0x3fb0e560    # 1.382f

    mul-float/2addr v8, v1

    div-float/2addr v8, v3

    const v9, 0x3ec39581    # 0.382f

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    add-float v33, v8, v7

    mul-float v20, v20, v1

    div-float v8, v20, v3

    sub-float v20, v20, v8

    mul-float v20, v20, v21

    const/high16 v29, 0x43340000    # 180.0f

    const/high16 v30, 0x42b40000    # 90.0f

    const/16 v31, 0x0

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v24, p1

    move/from16 v25, v19

    move/from16 v27, v33

    move/from16 v28, v20

    move-object/from16 v32, v8

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v8, 0x3e71c433    # 0.2361f

    mul-float/2addr v8, v1

    div-float v9, v8, v3

    sub-float/2addr v8, v9

    add-float v21, v8, v22

    const v8, 0x3fed566d    # 1.8542f

    mul-float/2addr v8, v1

    div-float/2addr v8, v3

    const v9, 0x3f5aacda    # 0.8542f

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    add-float v34, v8, v7

    const/high16 v29, 0x42b40000    # 90.0f

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v26, v21

    move/from16 v27, v34

    move/from16 v28, v5

    move-object/from16 v32, v8

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v8, 0x401e36e3    # 2.4721f

    mul-float/2addr v8, v1

    div-float/2addr v8, v3

    const v9, 0x3fbc6dc6    # 1.4721f

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    add-float v35, v8, v7

    const v8, 0x3f072b02    # 0.528f

    mul-float/2addr v8, v1

    div-float v9, v8, v3

    sub-float/2addr v8, v9

    add-float v36, v8, v22

    sub-float v17, v17, v1

    add-float v17, v17, v7

    const/16 v29, 0x0

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v25, v35

    move/from16 v26, v36

    move/from16 v27, v17

    move-object/from16 v32, v8

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v8, 0x4012ab36

    mul-float/2addr v8, v1

    div-float/2addr v8, v3

    const v9, 0x3fa5566d    # 1.2917f

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    const v8, 0x3f1e3bcd    # 0.6181f

    mul-float/2addr v8, v1

    div-float v9, v8, v3

    sub-float/2addr v8, v9

    add-float v37, v8, v22

    const v8, 0x3f68e8a7    # 0.9098f

    mul-float/2addr v8, v1

    div-float v3, v8, v3

    sub-float v3, v8, v3

    const/high16 v13, 0x43340000    # 180.0f

    const/high16 v14, 0x43340000    # 180.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v7

    move/from16 v10, v37

    move/from16 v11, v17

    move-object/from16 v16, v12

    move v12, v3

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    sget v8, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    sub-float/2addr v1, v8

    add-float v12, v1, v22

    const/4 v13, 0x0

    const/high16 v14, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v2

    move/from16 v10, v18

    move/from16 v11, v23

    move-object/from16 v16, v1

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v13, 0x43870000    # 270.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move v9, v4

    move v12, v6

    move-object/from16 v16, v1

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v29, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v25, v19

    move/from16 v27, v33

    move/from16 v28, v20

    move-object/from16 v32, v1

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v29, 0x42b40000    # 90.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v26, v21

    move/from16 v27, v34

    move/from16 v28, v5

    move-object/from16 v32, v1

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v29, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v25, v35

    move/from16 v26, v36

    move/from16 v27, v17

    move-object/from16 v32, v1

    invoke-virtual/range {v24 .. v32}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v13, 0x43340000    # 180.0f

    const/high16 v14, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move v9, v7

    move/from16 v10, v37

    move/from16 v11, v17

    move v12, v3

    move-object/from16 v16, v1

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_6
    :goto_2
    sub-float v1, v6, v8

    add-float/2addr v1, v3

    mul-float/2addr v7, v8

    sub-float v2, v6, v7

    add-float v4, v8, v3

    mul-float v21, v21, v8

    sub-float v5, v21, v7

    const/16 v27, 0x0

    const/high16 v28, 0x42b40000    # 90.0f

    const/16 v29, 0x0

    iget-object v9, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v30, v9

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float v18, v18, v8

    add-float v9, v18, v3

    mul-float v20, v20, v8

    sub-float v10, v8, v20

    sub-float/2addr v10, v7

    add-float v20, v8, v20

    sub-float v11, v20, v7

    const/high16 v27, 0x43870000    # 270.0f

    iget-object v12, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v26, v11

    move-object/from16 v30, v12

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    add-float/2addr v6, v3

    mul-float v17, v17, v8

    add-float v12, v17, v3

    mul-float v16, v16, v8

    sub-float v16, v16, v7

    const/high16 v26, 0x43340000    # 180.0f

    const/high16 v27, 0x42b40000    # 90.0f

    const/16 v28, 0x0

    iget-object v13, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v21, p1

    move/from16 v22, v6

    move/from16 v23, v10

    move/from16 v24, v12

    move/from16 v25, v16

    move-object/from16 v29, v13

    invoke-virtual/range {v21 .. v29}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    mul-float/2addr v15, v8

    sub-float v13, v8, v15

    sub-float/2addr v13, v7

    add-float/2addr v15, v3

    sub-float v31, v8, v7

    const/high16 v39, 0x42b40000    # 90.0f

    const/high16 v40, 0x42b40000    # 90.0f

    const/16 v41, 0x0

    iget-object v14, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v34, p1

    move/from16 v35, v6

    move/from16 v36, v13

    move/from16 v37, v15

    move/from16 v38, v31

    move-object/from16 v42, v14

    invoke-virtual/range {v34 .. v42}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v14, 0x3db8bac7    # 0.0902f

    mul-float/2addr v14, v8

    add-float/2addr v14, v3

    const v17, 0x3e954c98    # 0.2916f

    mul-float v17, v17, v8

    sub-float v17, v8, v17

    sub-float v17, v17, v7

    const v18, 0x3ec37b4a    # 0.3818f

    mul-float v18, v18, v8

    add-float v18, v18, v3

    const/16 v24, 0x0

    const/high16 v25, 0x42b40000    # 90.0f

    const/16 v26, 0x0

    iget-object v15, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move/from16 v20, v14

    move/from16 v21, v17

    move/from16 v22, v18

    move/from16 v23, v31

    move-object/from16 v27, v15

    invoke-virtual/range {v19 .. v27}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const v15, 0x3e4e703b    # 0.2016f

    mul-float/2addr v15, v8

    add-float/2addr v3, v15

    const v15, 0x3e718fc5    # 0.2359f

    mul-float/2addr v15, v8

    sub-float v15, v8, v15

    sub-float/2addr v15, v7

    const v19, 0x3d6425af    # 0.0557f

    mul-float v19, v19, v8

    sub-float v8, v8, v19

    sub-float v7, v8, v7

    const/high16 v24, 0x43340000    # 180.0f

    const/high16 v25, 0x43340000    # 180.0f

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move/from16 v20, v3

    move/from16 v21, v15

    move/from16 v23, v7

    move-object/from16 v27, v8

    invoke-virtual/range {v19 .. v27}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v27, 0x0

    const/high16 v28, 0x42b40000    # 90.0f

    const/16 v29, 0x0

    iget-object v8, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v30, v8

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v27, 0x43870000    # 270.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v26, v11

    move-object/from16 v30, v1

    invoke-virtual/range {v22 .. v30}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v26, 0x43340000    # 180.0f

    const/high16 v27, 0x42b40000    # 90.0f

    const/16 v28, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move-object/from16 v21, p1

    move/from16 v22, v6

    move/from16 v23, v10

    move/from16 v24, v12

    move/from16 v25, v16

    move-object/from16 v29, v1

    invoke-virtual/range {v21 .. v29}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move-object/from16 v42, v1

    invoke-virtual/range {v34 .. v42}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/16 v24, 0x0

    const/high16 v25, 0x42b40000    # 90.0f

    const/16 v26, 0x0

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v20, v14

    move/from16 v21, v17

    move/from16 v22, v18

    move/from16 v23, v31

    move-object/from16 v27, v1

    invoke-virtual/range {v19 .. v27}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v24, 0x43340000    # 180.0f

    const/high16 v25, 0x43340000    # 180.0f

    iget-object v1, v0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    move/from16 v20, v3

    move/from16 v21, v15

    move/from16 v23, v7

    move-object/from16 v27, v1

    invoke-virtual/range {v19 .. v27}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateView(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getDeviceRotation()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x43070000    # 135.0f

    if-lez v1, :cond_0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    const/high16 v2, 0x43610000    # 225.0f

    if-ltz v1, :cond_1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    const v1, 0x439d8000    # 315.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iget v1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mDeviceRotation:F

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v1, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-eq v0, v1, :cond_3

    iput-object v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "jiugongge"

    const-string v2, "pref_camera_referenceline_type_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "left_golden_spiral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "right_golden_spiral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v4

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "golden_section"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v6

    :cond_4
    :goto_1
    if-eqz v2, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->RightGoldenSpiral(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->LeftGoldenSpiral(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->GoldenSection(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->Jiugongge(Landroid/graphics/Canvas;)V

    :goto_2
    iget-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x344bfe51 -> :sswitch_3
        -0x1d02a42b -> :sswitch_2
        -0x124245fc -> :sswitch_1
        0x411c60af -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public initialize(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mColumnCount:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mRowCount:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaint:Landroid/graphics/Paint;

    sget p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mFrameColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mGoldensPiralPaintFrame:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ReferenceLineDrawer;->updateView(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    :cond_0
    return-void
.end method

.method public setBorderVisible(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mTopVisible:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mBottomVisible:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setGradienterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->isGradienterEnabled:Z

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/ReferenceLineDrawer;->mLineColor:I

    return-void
.end method
