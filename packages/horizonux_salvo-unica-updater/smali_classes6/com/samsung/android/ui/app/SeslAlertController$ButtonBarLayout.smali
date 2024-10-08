.class public Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "SeslAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/app/SeslAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonBarLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;

    .line 1238
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 1242
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 1246
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 1250
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1251
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 19
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 1255
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1256
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->getChildCount()I

    move-result v1

    .line 1257
    .local v1, "var3":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1258
    .local v2, "var4":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1259
    .local v3, "var5":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->getPaddingTop()I

    move-result v4

    .line 1260
    .local v4, "var6":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->getPaddingBottom()I

    move-result v5

    .line 1261
    .local v5, "var7":I
    const/4 v6, 0x0

    .line 1262
    .local v6, "var8":B
    const/4 v7, 0x0

    .line 1263
    .local v7, "var9":I
    move v8, v7

    .line 1264
    .local v8, "var10":I
    move v9, v7

    .line 1269
    .local v9, "var11":I
    move v10, v7

    .local v10, "var12":I
    :goto_0
    const/16 v11, 0x8

    if-ge v7, v1, :cond_2

    .line 1270
    invoke-virtual {v0, v7}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1271
    .local v12, "var13":Landroid/view/View;
    move v13, v8

    .line 1272
    .local v13, "var14":I
    move v14, v9

    .line 1273
    .local v14, "var15":I
    move v15, v10

    .line 1274
    .local v15, "var16":I
    move/from16 v16, v13

    .end local v13    # "var14":I
    .local v16, "var14":I
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v11, :cond_1

    .line 1275
    move v13, v8

    .line 1276
    .end local v16    # "var14":I
    .restart local v13    # "var14":I
    move v14, v9

    .line 1277
    move v15, v10

    .line 1278
    instance-of v11, v12, Landroid/widget/Button;

    if-eqz v11, :cond_0

    .line 1279
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v14, v9, v11

    .line 1280
    const/high16 v11, -0x80000000

    move/from16 v16, v13

    .end local v13    # "var14":I
    .restart local v16    # "var14":I
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    sub-int v17, v3, v4

    move/from16 v18, v3

    .end local v3    # "var5":I
    .local v18, "var5":I
    sub-int v3, v17, v5

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v12, v13, v3}, Landroid/view/View;->measure(II)V

    .line 1281
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v15, v10, v3

    .line 1282
    add-int/lit8 v13, v8, 0x1

    .end local v16    # "var14":I
    .restart local v13    # "var14":I
    goto :goto_1

    .line 1278
    .end local v18    # "var5":I
    .restart local v3    # "var5":I
    :cond_0
    move/from16 v18, v3

    move/from16 v16, v13

    .end local v3    # "var5":I
    .end local v13    # "var14":I
    .restart local v16    # "var14":I
    .restart local v18    # "var5":I
    goto :goto_1

    .line 1274
    .end local v18    # "var5":I
    .restart local v3    # "var5":I
    :cond_1
    move/from16 v18, v3

    .end local v3    # "var5":I
    .restart local v18    # "var5":I
    move/from16 v13, v16

    .line 1286
    .end local v16    # "var14":I
    .restart local v13    # "var14":I
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 1287
    move v8, v13

    .line 1288
    move v9, v14

    .line 1269
    .end local v13    # "var14":I
    .end local v14    # "var15":I
    move v10, v15

    move/from16 v3, v18

    goto :goto_0

    .line 1291
    .end local v12    # "var13":Landroid/view/View;
    .end local v15    # "var16":I
    .end local v18    # "var5":I
    .restart local v3    # "var5":I
    :cond_2
    move/from16 v18, v3

    .end local v3    # "var5":I
    .restart local v18    # "var5":I
    const/4 v3, 0x1

    .line 1292
    .local v3, "var18":Z
    add-int/lit8 v8, v8, -0x1

    .line 1293
    if-lez v8, :cond_3

    .line 1294
    int-to-float v12, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    float-to-int v8, v12

    goto :goto_2

    .line 1296
    :cond_3
    const/4 v8, 0x0

    .line 1299
    :goto_2
    if-lt v9, v10, :cond_c

    add-int v12, v10, v8

    if-le v2, v12, :cond_c

    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->getOrientation()I

    move-result v11

    if-eqz v11, :cond_b

    .line 1301
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->setOrientation(I)V

    .line 1303
    const v12, 0x7f09005e

    invoke-virtual {v0, v12}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_4

    .line 1304
    const/4 v12, 0x1

    .local v12, "var20":Z
    goto :goto_3

    .line 1306
    .end local v12    # "var20":Z
    :cond_4
    const/4 v12, 0x0

    .line 1310
    .restart local v12    # "var20":Z
    :goto_3
    const v13, 0x7f09005f

    invoke-virtual {v0, v13}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_5

    .line 1311
    const/4 v13, 0x1

    .local v13, "var19":Z
    goto :goto_4

    .line 1313
    .end local v13    # "var19":Z
    :cond_5
    const/4 v13, 0x0

    .line 1317
    .restart local v13    # "var19":Z
    :goto_4
    const v14, 0x7f090060

    invoke-virtual {v0, v14}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_6

    .line 1318
    move v14, v3

    .local v14, "var21":Z
    goto :goto_5

    .line 1320
    .end local v14    # "var21":Z
    :cond_6
    const/4 v14, 0x0

    .line 1323
    .restart local v14    # "var21":Z
    :goto_5
    const v15, 0x7f0901b9

    invoke-virtual {v0, v15}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1324
    .local v15, "var13":Landroid/view/View;
    const v11, 0x7f0901ba

    invoke-virtual {v0, v11}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1325
    .local v11, "var17":Landroid/view/View;
    if-eqz v11, :cond_9

    if-eqz v14, :cond_7

    if-nez v12, :cond_8

    :cond_7
    if-eqz v14, :cond_9

    if-eqz v13, :cond_9

    .line 1326
    :cond_8
    move/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "var4":I
    .local v17, "var4":I
    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1325
    .end local v17    # "var4":I
    .restart local v2    # "var4":I
    :cond_9
    move/from16 v17, v2

    .line 1329
    .end local v2    # "var4":I
    .restart local v17    # "var4":I
    :goto_6
    if-eqz v15, :cond_a

    if-eqz v12, :cond_a

    if-eqz v13, :cond_a

    .line 1330
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1332
    .end local v11    # "var17":Landroid/view/View;
    .end local v12    # "var20":Z
    .end local v13    # "var19":Z
    .end local v14    # "var21":Z
    :cond_a
    goto :goto_8

    .line 1300
    .end local v15    # "var13":Landroid/view/View;
    .end local v17    # "var4":I
    .restart local v2    # "var4":I
    :cond_b
    move/from16 v17, v2

    .end local v2    # "var4":I
    .restart local v17    # "var4":I
    goto :goto_8

    .line 1299
    .end local v17    # "var4":I
    .restart local v2    # "var4":I
    :cond_c
    move/from16 v17, v2

    .line 1333
    .end local v2    # "var4":I
    .restart local v17    # "var4":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->getOrientation()I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_f

    .line 1334
    invoke-virtual {v0, v12}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->setOrientation(I)V

    .line 1336
    move v2, v6

    move v8, v2

    :goto_7
    if-ge v8, v1, :cond_e

    .line 1337
    invoke-virtual {v0, v8}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1338
    .local v2, "var13":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v11, :cond_d

    instance-of v12, v2, Landroid/widget/Button;

    if-nez v12, :cond_d

    .line 1339
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1343
    .end local v2    # "var13":Landroid/view/View;
    :cond_e
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/app/SeslAlertController$ButtonBarLayout;->setGravity(I)V

    .line 1346
    :cond_f
    :goto_8
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1347
    return-void
.end method
