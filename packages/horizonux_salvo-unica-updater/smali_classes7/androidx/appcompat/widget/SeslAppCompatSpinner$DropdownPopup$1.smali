.class Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "SeslAppCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;-><init>(Landroidx/appcompat/widget/SeslAppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

.field final synthetic val$this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;Landroidx/appcompat/widget/SeslAppCompatSpinner;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 754
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    iput-object p2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$1;->val$this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 757
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->setSelection(I)V

    .line 758
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    iget-object v1, v1, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, p2, p3, v1, v2}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 761
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DropdownPopup;->dismiss()V

    .line 762
    return-void
.end method
