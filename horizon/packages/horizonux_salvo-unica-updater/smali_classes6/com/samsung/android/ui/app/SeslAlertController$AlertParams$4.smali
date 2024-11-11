.class Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "SeslAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->createListView(Lcom/samsung/android/ui/app/SeslAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

.field final synthetic val$var1:Lcom/samsung/android/ui/app/SeslAlertController;

.field final synthetic val$var2:Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;Lcom/samsung/android/ui/app/SeslAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1140
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$4;->this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$4;->val$var2:Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;

    iput-object p3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$4;->val$var1:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "var2x"    # Landroid/view/View;
    .param p3, "var3"    # I
    .param p4, "var4"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1142
    .local p1, "var1x":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$4;->this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v0, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mCheckedItems:[Z

    .line 1143
    .local v0, "var6":[Z
    if-eqz v0, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$4;->val$var2:Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1147
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$4;->this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v1, v1, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$4;->val$var1:Lcom/samsung/android/ui/app/SeslAlertController;

    iget-object v2, v2, Lcom/samsung/android/ui/app/SeslAlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget-object v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$4;->val$var2:Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;

    invoke-virtual {v3, p3}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v3

    invoke-interface {v1, v2, p3, v3}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1148
    return-void
.end method
