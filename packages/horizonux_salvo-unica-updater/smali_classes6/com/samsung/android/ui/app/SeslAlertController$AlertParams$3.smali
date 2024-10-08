.class Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;Lcom/samsung/android/ui/app/SeslAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1130
    iput-object p1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$3;->this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iput-object p2, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$3;->val$var1:Lcom/samsung/android/ui/app/SeslAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "var2"    # Landroid/view/View;
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

    .line 1132
    .local p1, "var1x":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$3;->this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-object v0, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$3;->val$var1:Lcom/samsung/android/ui/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/ui/app/SeslAlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1133
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$3;->this$0:Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/samsung/android/ui/app/SeslAlertController$AlertParams$3;->val$var1:Lcom/samsung/android/ui/app/SeslAlertController;

    iget-object v0, v0, Lcom/samsung/android/ui/app/SeslAlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 1137
    :cond_0
    return-void
.end method
