.class Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "SeslAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->createListView(Lcom/samsung/android/ui/app/SeslAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final mIsCheckedIndex:I

.field public final mLabelIndex:I

.field final synthetic this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

.field final synthetic val$var1:Lcom/samsung/android/ui/app/SeslAlertController;

.field final synthetic val$var2:Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/samsung/android/ui/app/SeslAlertController$RecycleListView;Lcom/samsung/android/ui/app/SeslAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # Landroid/database/Cursor;
    .param p4, "arg2"    # Z

    .line 1074
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;->this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p5, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;->val$var2:Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;

    iput-object p6, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;->val$var1:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1079
    invoke-virtual {p0}, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object p5

    .line 1080
    .local p5, "var7":Landroid/database/Cursor;
    iget-object p6, p1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p5, p6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p6

    iput p6, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;->mLabelIndex:I

    .line 1081
    iget-object p6, p1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p5, p6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p6

    iput p6, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1082
    .end local p5    # "var7":Landroid/database/Cursor;
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "var1x"    # Landroid/view/View;
    .param p2, "var2x"    # Landroid/content/Context;
    .param p3, "var3"    # Landroid/database/Cursor;

    .line 1086
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iget v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;->val$var2:Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;

    .line 1088
    .local v0, "var7":Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 1089
    .local v1, "var4":I
    iget v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;->mIsCheckedIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1090
    .local v2, "var5":I
    const/4 v3, 0x1

    .line 1091
    .local v3, "var6":Z
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    .line 1092
    const/4 v3, 0x0

    .line 1095
    :cond_0
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1096
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "var1x"    # Landroid/content/Context;
    .param p2, "var2x"    # Landroid/database/Cursor;
    .param p3, "var3"    # Landroid/view/ViewGroup;

    .line 1099
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;->this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v0, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$2;->val$var1:Lcom/samsung/android/ui/app/SeslAlertController;

    iget v1, v1, Lcom/samsung/android/ui/app/SeslAlertController;->mMultiChoiceItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
