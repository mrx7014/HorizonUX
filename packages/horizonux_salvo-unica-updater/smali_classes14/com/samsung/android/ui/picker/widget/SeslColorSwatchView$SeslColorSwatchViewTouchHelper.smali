.class Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SeslColorSwatchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeslColorSwatchViewTouchHelper"
.end annotation


# instance fields
.field private mColorDescription:[[Ljava/lang/String;

.field private mVirtualCursorIndexX:I

.field private mVirtualCursorIndexY:I

.field private final mVirtualViewRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;Landroid/view/View;)V
    .locals 39
    .param p2, "var2"    # Landroid/view/View;

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    .line 272
    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 273
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0121

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "var3":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f010f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "var4":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0109

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "var5":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0100

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "var6":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f00f1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, "var7":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0113

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, "var8":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f011d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 280
    .local v9, "var9":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0104

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 281
    .local v10, "var10":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f0112

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 282
    .local v11, "var11":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f011b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 283
    .local v12, "var12":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0103

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 284
    .local v13, "var13":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0f0116

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 285
    .local v14, "var14":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    const v1, 0x7f0f0122

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "var15":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    const v2, 0x7f0f0107

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "var16":Ljava/lang/String;
    const/4 v15, 0x3

    new-array v0, v15, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v17, v2

    .end local v2    # "var16":Ljava/lang/String;
    .local v17, "var16":Ljava/lang/String;
    const v2, 0x7f0f0110

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    aput-object v2, v0, v15

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f0f010a

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x1

    aput-object v2, v0, v15

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f0f0101

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x2

    aput-object v2, v0, v15

    .line 288
    .local v0, "var17":[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f0f0114

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "var18":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v21, v2

    .end local v2    # "var18":Ljava/lang/String;
    .local v21, "var18":Ljava/lang/String;
    const v2, 0x7f0f011f

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "var19":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v22, v2

    .end local v2    # "var19":Ljava/lang/String;
    .local v22, "var19":Ljava/lang/String;
    const v2, 0x7f0f0105

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "var20":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v23, v2

    .end local v2    # "var20":Ljava/lang/String;
    .local v23, "var20":Ljava/lang/String;
    const v2, 0x7f0f010e

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "var35":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v24, v2

    .end local v2    # "var35":Ljava/lang/String;
    .local v24, "var35":Ljava/lang/String;
    const v2, 0x7f0f00fc

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "var21":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v25, v2

    .end local v2    # "var21":Ljava/lang/String;
    .local v25, "var21":Ljava/lang/String;
    const v2, 0x7f0f00ff

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "var22":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v26, v2

    .end local v2    # "var22":Ljava/lang/String;
    .local v26, "var22":Ljava/lang/String;
    const v2, 0x7f0f010c

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "var23":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v27, v2

    .end local v2    # "var23":Ljava/lang/String;
    .local v27, "var23":Ljava/lang/String;
    const v2, 0x7f0f00f0

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "var24":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v28, v2

    .end local v2    # "var24":Ljava/lang/String;
    .local v28, "var24":Ljava/lang/String;
    const v2, 0x7f0f00fd

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "var25":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v29, v2

    .end local v2    # "var25":Ljava/lang/String;
    .local v29, "var25":Ljava/lang/String;
    const v2, 0x7f0f010d

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "var26":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v30, v2

    .end local v2    # "var26":Ljava/lang/String;
    .local v30, "var26":Ljava/lang/String;
    const v2, 0x7f0f00f2

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "var27":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v31, v2

    .end local v2    # "var27":Ljava/lang/String;
    .local v31, "var27":Ljava/lang/String;
    const v2, 0x7f0f00fe

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "var28":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v32, v2

    .end local v2    # "var28":Ljava/lang/String;
    .local v32, "var28":Ljava/lang/String;
    const v2, 0x7f0f0115

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "var29":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v33, v2

    .end local v2    # "var29":Ljava/lang/String;
    .local v33, "var29":Ljava/lang/String;
    const v2, 0x7f0f0120

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "var30":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v34, v2

    .end local v2    # "var30":Ljava/lang/String;
    .local v34, "var30":Ljava/lang/String;
    const v2, 0x7f0f0106

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "var31":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v35, v2

    .end local v2    # "var31":Ljava/lang/String;
    .local v35, "var31":Ljava/lang/String;
    const v2, 0x7f0f0111

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "var34":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v36, v2

    .end local v2    # "var34":Ljava/lang/String;
    .local v36, "var34":Ljava/lang/String;
    const v2, 0x7f0f0117

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "var32":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v37, v2

    .end local v2    # "var32":Ljava/lang/String;
    .local v37, "var32":Ljava/lang/String;
    const v2, 0x7f0f0102

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "var33":Ljava/lang/String;
    const/16 v15, 0xb

    new-array v15, v15, [[Ljava/lang/String;

    move-object/from16 p1, v2

    .end local v2    # "var33":Ljava/lang/String;
    .local p1, "var33":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v38, v0

    .end local v0    # "var17":[Ljava/lang/String;
    .local v38, "var17":[Ljava/lang/String;
    new-array v0, v2, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v3, v0, v18

    const/16 v19, 0x1

    aput-object v4, v0, v19

    const/16 v20, 0x2

    aput-object v5, v0, v20

    const/4 v2, 0x3

    aput-object v6, v0, v2

    const/16 v16, 0x4

    aput-object v7, v0, v16

    aput-object v0, v15, v18

    new-array v0, v2, [Ljava/lang/String;

    aput-object v8, v0, v18

    aput-object v9, v0, v19

    aput-object v10, v0, v20

    aput-object v0, v15, v19

    new-array v0, v2, [Ljava/lang/String;

    aput-object v11, v0, v18

    aput-object v12, v0, v19

    aput-object v13, v0, v20

    aput-object v0, v15, v20

    new-array v0, v2, [Ljava/lang/String;

    aput-object v14, v0, v18

    aput-object v1, v0, v19

    aput-object v17, v0, v20

    aput-object v0, v15, v2

    aput-object v38, v15, v16

    new-array v0, v2, [Ljava/lang/String;

    aput-object v21, v0, v18

    aput-object v22, v0, v19

    aput-object v23, v0, v20

    const/16 v16, 0x5

    aput-object v0, v15, v16

    new-array v0, v2, [Ljava/lang/String;

    aput-object v24, v0, v18

    aput-object v25, v0, v19

    aput-object v26, v0, v20

    const/16 v16, 0x6

    aput-object v0, v15, v16

    new-array v0, v2, [Ljava/lang/String;

    aput-object v27, v0, v18

    aput-object v28, v0, v19

    aput-object v29, v0, v20

    const/16 v16, 0x7

    aput-object v0, v15, v16

    new-array v0, v2, [Ljava/lang/String;

    aput-object v30, v0, v18

    aput-object v31, v0, v19

    aput-object v32, v0, v20

    const/16 v16, 0x8

    aput-object v0, v15, v16

    new-array v0, v2, [Ljava/lang/String;

    aput-object v33, v0, v18

    aput-object v34, v0, v19

    aput-object v35, v0, v20

    const/16 v16, 0x9

    aput-object v0, v15, v16

    new-array v0, v2, [Ljava/lang/String;

    aput-object v36, v0, v18

    aput-object v37, v0, v19

    aput-object p1, v0, v20

    const/16 v2, 0xa

    aput-object v0, v15, v2

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    .line 307
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    .line 308
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;I)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;
    .param p1, "x1"    # I

    .line 265
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription(I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private getFocusedVirtualViewId()I
    .locals 2

    .line 311
    iget v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    iget v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    return v0
.end method

.method private getItemDescription(I)Ljava/lang/StringBuilder;
    .locals 7
    .param p1, "var1"    # I

    .line 315
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->setVirtualCursorIndexAt(I)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$200(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)[[Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aget-object v0, v0, v1

    if-nez v0, :cond_7

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .local v0, "var2":Ljava/lang/StringBuilder;
    iget p1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 320
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x3

    if-nez p1, :cond_4

    .line 321
    iget v6, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 322
    .local v6, "var3":I
    if-nez v6, :cond_0

    .line 323
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 324
    :cond_0
    if-ge v6, v5, :cond_1

    .line 325
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 326
    :cond_1
    if-ge v6, v4, :cond_2

    .line 327
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 328
    :cond_2
    const/16 v1, 0x9

    if-ge v6, v1, :cond_3

    .line 329
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 331
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 334
    .end local v6    # "var3":I
    :cond_4
    iget v6, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 335
    .restart local v6    # "var3":I
    if-ge v6, v5, :cond_5

    .line 336
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 337
    :cond_5
    if-ge v6, v4, :cond_6

    .line 338
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v2, v2, p1

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 340
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$300(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)[[I

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$200(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)[[Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aput-object v0, v1, v2

    .line 349
    .end local v0    # "var2":Ljava/lang/StringBuilder;
    .end local v6    # "var3":I
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$200(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)[[Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private onVirtualViewClick(I)V
    .locals 3
    .param p1, "var1"    # I

    .line 353
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$400(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$400(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;->onColorSwatchChanged(I)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$600(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$500(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->sendEventForVirtualView(II)Z

    .line 358
    return-void
.end method

.method private setVirtualCursorIndexAt(FF)V
    .locals 5
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 361
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$700(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)F

    move-result v0

    const/high16 v1, 0x41300000    # 11.0f

    mul-float/2addr v0, v1

    .line 362
    .local v0, "var3":F
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$800(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    .line 363
    .local v1, "var4":F
    cmpl-float v2, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    .line 364
    sub-float/2addr v0, v3

    goto :goto_0

    .line 366
    :cond_0
    move v0, p1

    .line 367
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    .line 368
    const/4 v0, 0x0

    .line 372
    :cond_1
    :goto_0
    cmpl-float v2, p2, v1

    if-ltz v2, :cond_2

    .line 373
    sub-float p1, v1, v3

    goto :goto_1

    .line 375
    :cond_2
    move p1, p2

    .line 376
    cmpg-float v2, p2, v4

    if-gez v2, :cond_3

    .line 377
    const/4 p1, 0x0

    .line 381
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v2}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$700(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)F

    move-result v2

    div-float v2, v0, v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 382
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v2}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$800(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)F

    move-result v2

    div-float v2, p1, v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 383
    return-void
.end method

.method private setVirtualCursorIndexAt(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 386
    rem-int/lit8 v0, p1, 0xb

    iput v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 387
    div-int/lit8 v0, p1, 0xb

    iput v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 388
    return-void
.end method

.method private setVirtualCursorRect(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "var1"    # Landroid/graphics/Rect;

    .line 391
    iget v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$700(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v3}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$800(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v4}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$700(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v5}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$800(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 392
    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->setVirtualCursorIndexAt(FF)V

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p1, "var1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    const/16 v1, 0x6e

    if-ge v0, v1, :cond_0

    .line 401
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "var2":I
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/os/Bundle;

    .line 407
    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    .line 408
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->setVirtualCursorIndexAt(I)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$900(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)[[I

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->onVirtualViewClick(I)V

    .line 412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 416
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 417
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 420
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->setVirtualCursorIndexAt(I)V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->setVirtualCursorRect(Landroid/graphics/Rect;)V

    .line 422
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 424
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 425
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$500(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;->access$500(Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 427
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 429
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 430
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 433
    :cond_0
    return-void
.end method
