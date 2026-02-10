class Student
    private
    def student_params
        params.require(:student).permit(:namee,:email)
    end
end