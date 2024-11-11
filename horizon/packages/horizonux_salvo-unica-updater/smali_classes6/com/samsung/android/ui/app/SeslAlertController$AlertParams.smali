.class public Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;
.super Ljava/lang/Object;
.source "SeslAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/app/SeslAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/Context;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCheckedItem:I

    .line 1013
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIconAttrId:I

    .line 1014
    iput v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIconId:I

    .line 1038
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1045
    iput-boolean v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1050
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1051
    iput-boolean v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCancelable:Z

    .line 1052
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1053
    return-void
.end method

.method private createListView(Lcom/samsung/android/ui/app/SeslAlertController;)V
    .locals 11
    .param p1, "var1"    # Lcom/samsung/android/ui/app/SeslAlertController;

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lcom/samsung/android/ui/app/SeslAlertController;->mListLayout:I

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;

    .line 1059
    .local v0, "var2":Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;
    iget-boolean v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    .line 1060
    iget-object v9, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 1061
    .local v9, "var3":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1062
    new-instance v10, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$1;

    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/samsung/android/ui/app/SeslAlertController;->mMultiChoiceItemLayout:I

    const v5, 0x1020014

    iget-object v6, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v10

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$1;-><init>(Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;)V

    .local v1, "var6":Ljava/lang/Object;
    goto :goto_1

    .line 1074
    .end local v1    # "var6":Ljava/lang/Object;
    :cond_0
    new-instance v10, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v4, v9

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;-><init>(Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/samsung/android/ui/app/SeslAlertController$RecycleListView;Lcom/samsung/android/ui/app/SeslAlertController;)V

    .restart local v1    # "var6":Ljava/lang/Object;
    goto :goto_1

    .line 1105
    .end local v1    # "var6":Ljava/lang/Object;
    .end local v9    # "var3":Landroid/database/Cursor;
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    .line 1106
    iget v1, p1, Lcom/samsung/android/ui/app/SeslAlertController;->mSingleChoiceItemLayout:I

    .local v1, "var4":I
    goto :goto_0

    .line 1108
    .end local v1    # "var4":I
    :cond_2
    iget v1, p1, Lcom/samsung/android/ui/app/SeslAlertController;->mListItemLayout:I

    .line 1111
    .restart local v1    # "var4":I
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 1112
    .restart local v9    # "var3":Landroid/database/Cursor;
    const v2, 0x1020014

    if-eqz v9, :cond_3

    .line 1113
    new-instance v10, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    new-array v7, v8, [I

    aput v2, v7, v5

    move-object v2, v10

    move v4, v1

    move-object v5, v9

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v2

    .local v2, "var6":Ljava/lang/Object;
    goto :goto_1

    .line 1115
    .end local v2    # "var6":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1116
    .local v3, "var6":Ljava/lang/Object;
    if-nez v3, :cond_4

    .line 1117
    new-instance v4, Lcom/samsung/android/ui/app/SeslAlertController$CheckedItemAdapter;

    iget-object v5, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v4, v5, v1, v2, v6}, Lcom/samsung/android/ui/app/SeslAlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object v2, v4

    move-object v1, v2

    .end local v3    # "var6":Ljava/lang/Object;
    .restart local v2    # "var6":Ljava/lang/Object;
    goto :goto_1

    .line 1116
    .end local v2    # "var6":Ljava/lang/Object;
    .restart local v3    # "var6":Ljava/lang/Object;
    :cond_4
    move-object v1, v3

    .line 1122
    .end local v3    # "var6":Ljava/lang/Object;
    .local v1, "var6":Ljava/lang/Object;
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$OnPrepareListViewListener;

    .line 1123
    .local v2, "var5":Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$OnPrepareListViewListener;
    if-eqz v2, :cond_5

    .line 1124
    invoke-interface {v2, v0}, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1127
    :cond_5
    move-object v3, v1

    check-cast v3, Landroid/widget/ListAdapter;

    iput-object v3, p1, Lcom/samsung/android/ui/app/SeslAlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1128
    iget v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCheckedItem:I

    iput v3, p1, Lcom/samsung/android/ui/app/SeslAlertController;->mCheckedItem:I

    .line 1129
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_6

    .line 1130
    new-instance v3, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$3;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$3;-><init>(Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;Lcom/samsung/android/ui/app/SeslAlertController;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    .line 1139
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_7

    .line 1140
    new-instance v3, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$4;-><init>(Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;Lcom/samsung/android/ui/app/SeslAlertController;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1152
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1153
    .local v3, "var7":Landroid/widget/AdapterView$OnItemSelectedListener;
    if-eqz v3, :cond_8

    .line 1154
    invoke-virtual {v0, v3}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1157
    :cond_8
    iget-boolean v4, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v4, :cond_9

    .line 1158
    invoke-virtual {v0, v8}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_3

    .line 1159
    :cond_9
    iget-boolean v4, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v4, :cond_a

    .line 1160
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->setChoiceMode(I)V

    .line 1163
    :cond_a
    :goto_3
    iput-object v0, p1, Lcom/samsung/android/ui/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    .line 1164
    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/android/ui/app/SeslAlertController;)V
    .locals 9
    .param p1, "var1"    # Lcom/samsung/android/ui/app/SeslAlertController;

    .line 1167
    iget-object v6, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 1170
    .local v6, "var2":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 1171
    invoke-virtual {p1, v6}, Lcom/samsung/android/ui/app/SeslAlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 1174
    .local v0, "var4":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 1175
    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/app/SeslAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1178
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1179
    .local v1, "var5":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1180
    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/app/SeslAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1183
    :cond_2
    iget v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIconId:I

    .line 1184
    .local v2, "var3":I
    if-eqz v2, :cond_3

    .line 1185
    invoke-virtual {p1, v2}, Lcom/samsung/android/ui/app/SeslAlertController;->setIcon(I)V

    .line 1188
    :cond_3
    iget v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIconAttrId:I

    .line 1189
    if-eqz v2, :cond_4

    .line 1190
    invoke-virtual {p1, v2}, Lcom/samsung/android/ui/app/SeslAlertController;->getIconAttributeResId(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/ui/app/SeslAlertController;->setIcon(I)V

    .line 1194
    .end local v0    # "var4":Ljava/lang/CharSequence;
    .end local v1    # "var5":Landroid/graphics/drawable/Drawable;
    .end local v2    # "var3":I
    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 1195
    .local v7, "var4":Ljava/lang/CharSequence;
    if-eqz v7, :cond_5

    .line 1196
    invoke-virtual {p1, v7}, Lcom/samsung/android/ui/app/SeslAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1199
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 1200
    :cond_6
    const/4 v1, -0x1

    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, v8

    check-cast v4, Landroid/os/Message;

    iget-object v5, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/app/SeslAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1203
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 1204
    :cond_8
    const/4 v1, -0x2

    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, v8

    check-cast v4, Landroid/os/Message;

    iget-object v5, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/app/SeslAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1207
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-nez v2, :cond_a

    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 1208
    :cond_a
    const/4 v1, -0x3

    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, v8

    check-cast v4, Landroid/os/Message;

    iget-object v5, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/app/SeslAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1211
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_d

    .line 1212
    :cond_c
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->createListView(Lcom/samsung/android/ui/app/SeslAlertController;)V

    .line 1215
    :cond_d
    iget-object v6, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1216
    if-eqz v6, :cond_f

    .line 1217
    iget-boolean v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_e

    .line 1218
    iget v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/app/SeslAlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_1

    .line 1220
    :cond_e
    invoke-virtual {p1, v6}, Lcom/samsung/android/ui/app/SeslAlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 1223
    :cond_f
    iget v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mViewLayoutResId:I

    .line 1224
    .local v0, "var3":I
    if-eqz v0, :cond_10

    .line 1225
    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/app/SeslAlertController;->setView(I)V

    .line 1229
    .end local v0    # "var3":I
    :cond_10
    :goto_1
    return-void
.end method
