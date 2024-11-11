.class Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "SeslAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->createListView(Lcom/samsung/android/ui/app/SeslAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

.field final synthetic val$var2:Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # [Ljava/lang/CharSequence;

    .line 1062
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$1;->this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p6, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$1;->val$var2:Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "var1"    # I
    .param p2, "var2x"    # Landroid/view/View;
    .param p3, "var3"    # Landroid/view/ViewGroup;

    .line 1064
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1065
    .local v0, "var5":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$1;->this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCheckedItems:[Z

    .line 1066
    .local v1, "var4":[Z
    if-eqz v1, :cond_0

    aget-boolean v2, v1, p1

    if-eqz v2, :cond_0

    .line 1067
    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$1;->val$var2:Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1070
    :cond_0
    return-object v0
.end method
